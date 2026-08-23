using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Models;
using ProductApi.DTOs;
namespace InvoiceCoreAPI.Contracts;

public interface IUsersService
{
    Task<ApiResponse<IEnumerable<UsersDto>>> GetAllAsync();
    Task<ApiResponse<UsersDto>> GetByIdAsync(int id);
    Task<ApiResponse<UsersDto>> CreateAsync(UserCreateDto dto);
    Task<ApiResponse<UsersDto>> UpdateAsync(
        int id,
        UserUpdateDto dto);
    Task<ApiResponse<bool>> DeleteAsync(int id, string updatedBy);
    Task<ApiResponse<PagedResultDto<UsersDto>>> GetPagedAsync(
        UserFilterDto filter);
    Task<UsersDto?> ValidateUserAsync(
        string userName,
        string password);
}