
using Invoice.Data.Entities;
using Invoice.DTOs;

namespace Invoice.DAL.Contracts;

public interface IItemmasterRepository
{
    Task<int> AddAsync(ItemMasterEntity entity);
    Task<IEnumerable<ItemMasterEntity>> GetAllAsync();
    Task<ItemMasterEntity?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(ItemMasterEntity entity);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<ItemMasterEntity>> GetAllPagedAsync(ItemmasterFilterDto search);
    Task<int> GetActiveItemCountByCategoryAsync(int categoryId);

}
