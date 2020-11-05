#FROM alpine:3.12
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app
#Run apk add curl
#RUN apk add wget
#RUN apk add bash
#RUN apk add tar
#RUN wget -O ./dotnet-install.sh https://dot.net/v1/dotnet-install.sh
#RUN chmod u+x ./dotnet-install.sh
#RUN ./dotnet-install.sh
ADD Zrodlo.tar.gz ./Zrodlo.tar.gz
RUN dotnet build --configuration:Release
EXPOSE 5000
EXPOSE 5001
CMD ["dotnet", "run --no-build"]
