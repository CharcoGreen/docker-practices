# Dockerfile training

## Test

### Crear dockerfile

    - Utiliza como base4 una imagen de ubuntu desde repositorio https://hub.docker.com/ 
    - Puedes utilizar etiqueta latest pero intenta establecer una version.
    - Actualizar el software de la imagen base.
    - Instalar Python3
    - Realizar limpieza de software de la imagen y cache de la descarga de software
    - Declara un ENTRYPOINT para que escriba al ejecutar "HELLO WORLD!!!"
      como entrypoint prefinido al arrancar el container.

### Construye la imagen
 
    - Archivo base: Dockerfile-hello-world
    - nombre y version de la imagen: ubuntu:0.0.1

### Arranca el container con docker

    El comando de arranque debe realizar lo siguiente:
    - Iniciar el container con docker
    - Eliminar el container del todo al terminar la ejecución
    - Establecer un nombre al container:
        - "check-ubuntu"