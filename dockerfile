FROM eclipse-temurin:21-jre

WORKDIR /server

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Download Paper (1.21.x)
RUN curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/30/downloads/paper-1.21.1-30.jar

COPY start.sh .
COPY eula.txt .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
