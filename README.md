# README

## Deploy

Para hacer un deploy local de este proyecto:

1. Clonar el repositorio.

2. Para este desafio se utilizó postgresql. Se debe crear archivo `.env` dentro de la carpeta root del proyecto, esto es para configurar un usuario para la DB. Dentro de este archivo debe copiar y pegar las siguientes líneas de código.

```bash
DB_USERNAME=myuser
DB_PASSWORD=mypassword
```

Donde las variables `myuser` y `mypassword` quedan a elección del usuario.

3. Para instalar todas las dependencias del proyecto debes abrir `bash` y ejecutar el siguiente código:

```bash
bundle install
```

4. Luego se deben ejecutar las migraciones y la implementación de las seeds, para lo primero, ejecutar el siguiente comando en `bash`:

```bash
rails db:migrate
```

Y para ejecutar las seeds, lo siguiente:

```bash
rails db:seed
```

5. Ahora estamos listos para correr el proyecto con

```bash
rails start
```

- Ruby version 3.1.0

- RoR version 7.0.8

## Supuestos

- • Para la creación de ordenes siempre se hará con información correcta, de lo contrario se deben agregar validaciones.
