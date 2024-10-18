# Use a imagem oficial do .NET SDK como base para a construção da aplicação
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copie o arquivo de projeto e restaure as dependências
COPY gestao-residuos-ASP.NET/*.csproj ./gestao-residuos-ASP.NET/
WORKDIR /src/gestao-residuos-ASP.NET
RUN dotnet restore

# Copie o restante do código do projeto e compile-o
COPY . .
WORKDIR /src/gestao-residuos-ASP.NET
RUN dotnet publish -c Release -o /app/out

# Use a imagem oficial do .NET Runtime para a execução
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out .

# Defina a porta em que a aplicação será executada
EXPOSE 8080
ENTRYPOINT ["dotnet", "gestao-residuos-ASP.NET.dll"]
