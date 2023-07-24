# CreateCleanArchitecture
This is a powershell script that automate the creation of clean architecture with dotnet

## Example Usage
`./create.ps1 test` will create the following structure

```
/test/test.sln
/test/Application/Application.csproj
/test/Domain/Domain.csproj
/test/Infrastructure/Infrastructure.csproj
/test/Presentation/Presentation.csproj
```

`./clean.ps1 test` will remove the test folde recursively


