FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /App

# Copy csproj
COPY *.csproj ./

# Restore as distinct layers
RUN dotnet restore

# Copy everything
COPY . ./

# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0

ENV ASPNETCORE_URLS http://+:5000

WORKDIR /App
COPY --from=build-env /App/out .
ENTRYPOINT ["dotnet", "api.dll"]