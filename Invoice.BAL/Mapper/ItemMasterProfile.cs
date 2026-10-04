using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
public class ItemMasterProfile : Profile
{
    public ItemMasterProfile()
    {
        CreateMap<ItemMasterEntity, ItemmasterDto>().ReverseMap();
    }
}
