# Utilizar la imagen base de Ollama
FROM ollama/ollama

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
    ollama run starcoder2 && \
    ollama run falcon && \
    ollama run sqlcoder && \
    ollama run wizardcoder && \
    ollama run stable-code && \
    ollama run wizard-math && \
    ollama run wizardlm2 && \
    ollama run llama2-uncensored && \
    ollama run deepseek-coder && \
    ollama run wizard-vicuna-uncensored"

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["ollama", "start"]
