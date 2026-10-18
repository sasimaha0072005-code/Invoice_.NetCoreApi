using Invoice.BAL.Services;
using Invoice.BAL.Contracts;
using Invoice.DAL.Contracts;
using Invoice.DTOs;
using Invoice.Data.Entities;
using Moq;

namespace Invoice.BAL.Test.Services;

public class MasterCountServiceTests
{
    public MasterCountServiceTests()
    {
        _customersMock = new Mock<ICustomerRepository>();
        _itemsMock = new Mock<IItemmasterRepository>();
        _usersMock = new Mock<IUsersRepository>();
        _categoriesMock = new Mock<ICategoryService>();
        _vendorsMock = new Mock<IVendorService>();

        _service = new MasterCountService(
            _customersMock.Object,
            _itemsMock.Object,
            _usersMock.Object,
            _categoriesMock.Object,
            _vendorsMock.Object);
    }

    private readonly Mock<ICustomerRepository> _customersMock;
    private readonly Mock<IItemmasterRepository> _itemsMock;
    private readonly Mock<IUsersRepository> _usersMock;
    private readonly Mock<ICategoryService> _categoriesMock;
    private readonly Mock<IVendorService> _vendorsMock;
    private readonly MasterCountService _service;

    [Fact]
    public async Task GetCategoryNamesAsync_ReturnsDistinctOrderedTrimmed()
    {
        var categories = new List<CategoryDto>
        {
            new() { Name = " Rice " },
            new() { Name = "Wheat" },
            new() { Name = "rice" },
            new() { Name = null },
            new() { Name = "  " }
        };

        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(categories);

        var result = await _service.GetCategoryNamesAsync();

        Assert.Equal(new[] { "Rice", "Wheat" }, result);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_ReturnsNullWhenCategoryNotFound()
    {
        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(new List<CategoryDto>());

        var result = await _service.CountItemsInCategoryAsync("Anything", null);

        Assert.Null(result);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_ReturnsItemCountWhenFound()
    {
        var categories = new List<CategoryDto>
        {
            new() { Id = 5, Name = "Rice" }
        };

        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(categories);

        _itemsMock
            .Setup(x => x.GetAllPagedAsync(It.Is<ItemmasterFilterDto>(f => f.CategoryId == 5 && f.IsActive == true && f.PageNumber == 1 && f.PageSize == 1)))
            .ReturnsAsync(new PagedResultDto<ItemMasterEntity> { TotalRecords = 7 });

        var result = await _service.CountItemsInCategoryAsync(" rice ", true);

        Assert.Equal(7, result);

        _itemsMock.Verify(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()), Times.Once);
    }

    [Fact]
    public async Task CountItemsAsync_UsesRepositoryTotalRecords()
    {
        _itemsMock.Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
            .ReturnsAsync(new PagedResultDto<ItemMasterEntity> { TotalRecords = 42 });

        var result = await _service.CountItemsAsync(3, null);

        Assert.Equal(42, result);
    }

    [Fact]
    public async Task CountCustomersAsync_DelegatesToRepository()
    {
        _customersMock.Setup(x => x.GetCustomerCountAsync(true)).ReturnsAsync(9);

        var result = await _service.CountCustomersAsync(true);

        Assert.Equal(9, result);
    }

    [Fact]
    public async Task CountCustomersByCityAsync_IsCaseInsensitiveAndTrimmed()
    {
        var customers = new List<CustomerEntity>
        {
            new() { City = "Chennai" , IsDeleted = false, IsActive = true},
            new() { City = " chennai ", IsDeleted = false, IsActive = true},
            new() { City = "Madurai", IsDeleted = false, IsActive = true},
            new() { City = null, IsDeleted = false, IsActive = true},
            new() { City = "Chennai", IsDeleted = true, IsActive = true}
        };

        _customersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(customers);

        var result = await _service.CountCustomersByCityAsync(" chennai ", null);

        Assert.Equal(2, result);
    }

    [Fact]
    public async Task CountCustomersGroupedByCityAsync_GroupsAndOrders()
    {
        var customers = new List<CustomerEntity>
        {
            new() { City = "Bengaluru", IsDeleted = false },
            new() { City = "chennai", IsDeleted = false },
            new() { City = "Chennai", IsDeleted = false },
            new() { City = "", IsDeleted = false },
            new() { City = null, IsDeleted = false }
        };

        _customersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(customers);

        var result = (await _service.CountCustomersGroupedByCityAsync(null)).ToList();

        Assert.Equal(2, result.Count);
        Assert.Equal("Bengaluru", result[0].City, StringComparer.OrdinalIgnoreCase);
        Assert.Equal(1, result[0].Count);
        Assert.True(string.Equals("Chennai", result[1].City, StringComparison.OrdinalIgnoreCase));
        Assert.Equal(2, result[1].Count);
    }

    [Fact]
    public async Task CountVendorsAsync_FiltersByIsActive()
    {
        var vendors = new List<VendorDto>
        {
            new() { Id = 1, VendorName = "A", IsActive = true },
            new() { Id = 2, VendorName = "B", IsActive = false },
            new() { Id = 3, VendorName = "C", IsActive = true }
        };

        _vendorsMock.Setup(x => x.GetAllAsync()).ReturnsAsync(vendors);

        var result = await _service.CountVendorsAsync(true);

        Assert.Equal(2, result);
    }

    [Fact]
    public async Task CountUsersAsync_ExcludesDeletedAndFiltersByIsActive()
    {
        var users = new List<UsersEntity>
        {
            new() { Id = 1, IsDeleted = false, IsActive = true },
            new() { Id = 2, IsDeleted = true, IsActive = true },
            new() { Id = 3, IsDeleted = false, IsActive = false }
        };

        _usersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(users);

        var result = await _service.CountUsersAsync(true);

        Assert.Equal(1, result);
    }
}
