FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY bin/Release/net5.0/publish/ App/
WORKDIR /App
ENV DOTNET_EnableDiagnostics=0
EXPOSE 5000
EXPOSE 5001
ENTRYPOINT ["dotnet", "NetCore.MyStore.dll"]