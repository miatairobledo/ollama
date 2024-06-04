# Utilizar la imagen base de Ollama
FROM ollama/ollama

# Instalar todos los modelos disponibles
RUN ollama install gemma

RUN ollama install phi3

RUN ollama install llava

RUN ollama install mistral

RUN ollama install codellama

RUN ollama install orca-mini

RUN ollama install starcoder2

EXPOSE 8080
EXPOSE 443
EXPOSE 11434
EXPOSE 80

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["ollama", "start"]
