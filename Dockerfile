FROM microsoft/dotnet:latest

COPY . /app

WORKDIR /app

RUN ["dotnet", "restore"]

RUN ["dotnet", "build"]

EXPOSE 8001/tcp

CMD ["dotnet", "run", "--server.urls", "http://*:8001”]
