using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
public class CustomerProfile : Profile
{
    public CustomerProfile()
    {
        CreateMap<CustomerEntity, CustomerDto>().ReverseMap();
    }
}
