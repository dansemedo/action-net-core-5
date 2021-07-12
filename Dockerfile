FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY bin/Release/net5.0/publish/ App/
WORKDIR /App
ENV DOTNET_EnableDiagnostics=0
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["dotnet", "NetCore.MyStore.dll"]