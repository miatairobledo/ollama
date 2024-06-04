# Utilizar la imagen base de Ollama
FROM ollama/ollama

# Establecer el directorio de trabajo
WORKDIR /app

# Exponer los puertos necesarios
EXPOSE 8080
EXPOSE 443
EXPOSE 11434
EXPOSE 80

# Iniciar la aplicación ollama y luego instalar los modelos
RUN /bin/sh -c "ollama start && \
    ollama run gemma && \
    ollama run phi3 && \
    ollama run llava && \
    ollama run mistral && \
    ollama run codellama && \
    ollama run orca-mini && \
    ollama run starcoder2"

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["ollama", "start"]

# Adaptaciones para compatibilidad con render.com
# Render.com establece la variable de entorno PORT a 10000 por defecto
# ENV PORT 8080
