
using AutoMapper;
using Invoice.DTOs;
using Invoice.DTOs.Entities;

public class CategoryProfile : Profile
{
    public CategoryProfile()
    {
        CreateMap<CategoryEntity, CategoryDto>().ReverseMap();
    }
}

