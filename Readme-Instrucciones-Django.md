Linux Ubuntu + Django + Oracle XE
========================

**Autor**: Luis Gutierrez

**Twitter**:@lagaguate

**emails**: <lagaguate@yahoo.com, lagaguate@gmail.com>

Ultimo Cambio: 26/10/2023

Tags: `Python`, `Django`

#Introducción

En este documento se deja todas las instrucciones para crear, ejecutar proyecto con Django.  Ademas vamos a dejar un listado de las especificacion del equipo con que se desarollo.

### Version Linux Ubuntu
```

lsb_release -a

```
- Distributor ID:	Ubuntu
- Description:	Ubuntu 22.04.3 LTS
- Release:	22.04
- Codename:	jammy
### Version Python
```

python --version

```
- *Python 3.10.11*

### Version Django
```

pip freeze | grep Django

```

- Django==4.2.3

## Comandos Django

1. Ejecutar el comando para crear un proyecto en Django.

```
django-admin startproject LibroCV
```

2. Ingresar al directorio LibroCV, y crear una APP con el nombre  **LibroCVApp**.

```
python3 manage.py startapp LibroCVApp
```

3. Ejecutar el servidor Django
```
python3 manage.py runserver 8810
```

4. Creacion de las Apps
4.1 Catalogos
4.2 Cargas Archivos
4.3 Reportes
4.4 Cierres

```
python3 manage.py startapp CatalagoCV
python3 manage.py startapp UploadFileCV

```
# Instalar librerias
```
pip install cx-Oracle
```