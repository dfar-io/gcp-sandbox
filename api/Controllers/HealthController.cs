using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace api.Controllers;

[Route("/")]
public class HealthController : ControllerBase
{
    [HttpGet]
    [AllowAnonymous]
    public IActionResult Health()
    {
        return new OkObjectResult(new {
            RepositoryUrl = ThisAssembly.Git.RepositoryUrl,
            Branch = ThisAssembly.Git.Branch,
            CommitDate = ThisAssembly.Git.CommitDate,
            Sha = ThisAssembly.Git.Sha
        });
    }
}