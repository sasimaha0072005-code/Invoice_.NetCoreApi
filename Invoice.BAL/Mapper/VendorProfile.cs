using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
public class VendorProfile : Profile
{
    public VendorProfile()
    {
        CreateMap<VendorEntity, VendorDto>().ReverseMap();
    }
}
