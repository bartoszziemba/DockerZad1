FROM alpine:3.12
WORKDIR /home/blazor/
RUN wget https://dot.net/v1/dotnet-install.sh
RUN ./dotnet-install.sh
ADD ./BlazorDocker.tar.gz ./BlazorDocker.tar.gz
RUN tar -xzf ./BlazorDocker.tar.gz
RUN dotnet build
EXPOSE 5000
EXPOSE 5001
CMD ["dotnet", "run --no-build"]