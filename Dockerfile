# Utilizar la imagen base de Ollama
FROM ollama/ollama

# Exponer los puertos necesarios
EXPOSE 8080
EXPOSE 443
EXPOSE 11434
EXPOSE 80

# Iniciar la aplicación ollama en segundo plano y luego instalar los modelos
RUN /bin/sh -c "ollama start & sleep 10 && \
    ollama run gemma && \
    ollama run phi3 && \
    ollama run llava && \
    ollama run mistral && \
    ollama run starcoder && \
    ollama run openchat && \
    ollama run wizard-math && \
    ollama run codeqwen && \
    ollama run dolphincoder && \
    ollama run codestral && \
    ollama run sqlcoder2 && \ 
    ollama run bakllava && \
    ollama run magicoder && \
    ollama run tinyllama"
