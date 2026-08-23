using InvoiceCoreAPI.DTO;
namespace InvoiceCoreAPI.Contracts
{
    public interface IItemMasterService
    {
        Task<int> AddAsync(ItemmasterDto itemmaster);
        Task<IEnumerable<ItemmasterDto>> GetAllAsync();
        Task<ItemmasterDto?> GetByIdAsync(int id);
        Task<bool> UpdateAsync(ItemmasterDto itemmaster);
        Task<bool> DeleteAsync(int id);
        Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(
int? categoryId,
string? itemName,
string? uom,
int pageNumber,
int pageSize);
    }
}