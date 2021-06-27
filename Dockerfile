# Dockerize an ASP.NET Core application - https://docs.docker.com/engine/examples/dotnetcore/
# Note this is a .NET Core 3.0 project

FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app

ENV MY_ENV_VAR="test!"

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
# COPY ./app ./HelloWorld
COPY app ./HelloWorld

WORKDIR "/src/HelloWorld"

RUN dotnet restore "HelloWorld.csproj"
RUN dotnet build "HelloWorld.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "HelloWorld.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "HelloWorld.dll"]
