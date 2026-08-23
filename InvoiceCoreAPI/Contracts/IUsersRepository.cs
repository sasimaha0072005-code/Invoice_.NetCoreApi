namespace ProductApi.Contracts;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using ProductApi.DTOs;

public interface IUsersRepository
{
    Task<IEnumerable<Users>> GetAllAsync();
    Task<Users?> GetByIdAsync(int id);
    Task<Users?> GetByUserNameAsync(string userName);
    Task<Users?> GetByEmailAsync(string email);
    Task<int> InsertAsync(Users user);
    Task<bool> UpdateAsync(int id, Users user);
    Task<bool> DeleteAsync(int id,string updatedBy);
    Task<PagedResultDto<Users>> GetPagedAsync(UserFilterDto filter);
    Task<bool> UpdateLastLoginAsync(int id);
}