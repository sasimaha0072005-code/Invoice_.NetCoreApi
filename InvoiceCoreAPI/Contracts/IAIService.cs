using InvoiceCoreAPI.Models.AI;
using System.Threading.Tasks;

namespace InvoiceCoreAPI.Contracts
{
    public interface IAIService
    {
        Task<AIAskResponse> AskAsync(AIAskRequest request);
    }
}