using AutoMapper; 

using InvoiceCoreAPI.Entities;

using InvoiceCoreAPI.DTO;

namespace InvoiceCoreAPI.Mapper

{

    public class ItemmasterProfile : Profile

    {

        public ItemmasterProfile()

        {

            CreateMap<Itemmaster, ItemmasterDto>().ReverseMap();

        }

    }

}

