# Utilizar la imagen base de Ollama
FROM ollama/ollama

# Instalar todos los modelos disponibles
RUN ollama run gemma

RUN ollama run phi3

RUN ollama run llava

RUN ollama run mistral

RUN ollama run codellama

RUN ollama run orca-mini

RUN ollama run starcoder2

EXPOSE 8080
EXPOSE 443
EXPOSE 11434
EXPOSE 80

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["ollama", "start"]
