IMAGE_NAME=workshop
TAG=latest
MY_ENV_VARIABLE="HOLA ZARAGOZA Tech!!!"
# Image URL Ttech
# MY_ENV_IMAGE="https://aicongress.barcelona/wp-content/uploads/2024/08/telefonicatech-web-332x214-1.jpg"
# Image URL Tenerife
# MY_ENV_IMAGE="https://www.vinilosdecoracion.es/wp-content/uploads/2021/06/vdeco-futbol-escudo-tenerife-cdt-3.jpg"
MY_ENV_IMAGE="https://external-preview.redd.it/1fvR8lLDYBdhAXTBwC71loBKiNiLusnFkgdDmi-PuxU.jpg?auto=webp&s=9f5b736af2b1f8ffeaf909103f7039030ca40096"

.PHONY: build run stop rm restart

stop:
	docker stop $(IMAGE_NAME) || true

rm:
	docker rm $(IMAGE_NAME) || true

run:
	docker run -d --name $(IMAGE_NAME) -p 8080:80 -e MY_ENV_VARIABLE=${MY_ENV_VARIABLE} -e MY_ENV_IMAGE=${MY_ENV_IMAGE} $(IMAGE_NAME):$(TAG)

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

restart: stop rm build run