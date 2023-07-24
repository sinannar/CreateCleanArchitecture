# Get the first argument as solution name
$solutionname = $args[0]

clear

# Create solution and projects
echo "Create Solution"
dotnet new sln --name $solutionname --output $solutionname
dotnet new classlib --name Domain --output $solutionname/Domain
dotnet new classlib --name Infrastructure --output $solutionname/Infrastructure
dotnet new classlib --name Application --output $solutionname/Application
dotnet new webapi --name Presentation --output $solutionname/Presentation
clear

echo "Adding projects Solution"
dotnet sln $solutionname/$solutionname.sln add $solutionname/Domain/Domain.csproj
dotnet sln $solutionname/$solutionname.sln add $solutionname/Infrastructure/Infrastructure.csproj
dotnet sln $solutionname/$solutionname.sln add $solutionname/Application/Application.csproj
dotnet sln $solutionname/$solutionname.sln add $solutionname/Presentation/Presentation.csproj
clear

echo "Setting up the dependencies"
dotnet add $solutionname/Application/Application.csproj reference $solutionname/Domain/Domain.csproj
dotnet add $solutionname/Infrastructure/Infrastructure.csproj reference $solutionname/Application/Application.csproj
dotnet add $solutionname/Presentation/Presentation.csproj reference $solutionname/Application/Application.csproj
dotnet add $solutionname/Presentation/Presentation.csproj reference $solutionname/Infrastructure/Infrastructure.csproj
clear

echo "$solutionname is created successfully"
