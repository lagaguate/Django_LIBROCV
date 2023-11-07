# Conexion Djgango a Oracle

Link:
https://codigospython.com/django-oracle-integracion-de-django-y-oracle/

## Instrucciones


Django Oracle: Integración de Django y Oracle
octubre 4, 2023 por Juanweb

Django Oracle: Integración de Django y Oracle

Django es un framework web de Python de código abierto que permite crear aplicaciones web robustas y escalables. Oracle es un sistema de gestión de bases de datos relacionales (RDBMS) que ofrece un rendimiento y una confiabilidad líderes en la industria.

La integración de Django y Oracle permite aprovechar las ventajas de ambos sistemas para crear aplicaciones web que sean potentes, eficientes y seguras.

Requisitos previos

Para seguir este tutorial, necesitarás lo siguiente:

    Python 3.8 o superior
    Django 3.2 o superior
    Oracle Database 19c o superior

Pasos para la integración

## Instalar las dependencias

Instala las dependencias de Python para Django y Oracle:

```
pip install django
pip install cx_Oracle
```

## Crea un proyecto Django

Crea un proyecto Django nuevo:

```
django-admin startproject mi_proyecto
```

##    Configura la conexión a la base de datos

Añade la siguiente configuración a my_project/settings.py:
Python

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.oracle',
        'NAME': 'mi_base_de_datos',
        'USER': 'mi_usuario',
        'PASSWORD': 'mi_contraseña',
        'HOST': 'localhost',
        'PORT': 1521,
    }
}
```
Reemplaza los valores de NAME, USER, PASSWORD, HOST y PORT con los datos de tu base de datos Oracle.

## Crea un modelo de datos

Crea un modelo de datos para representar tus datos en la base de datos Oracle:
Python

```
from django.db import models

class Producto(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=255)
    precio = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.nombre

    Migre el modelo de datos
```


Migre el modelo de datos a la base de datos Oracle:

```
python manage.py makemigrations
python manage.py migrate
```

## Crea una vista

Crea una vista para mostrar una lista de productos:
Python

```
from django.shortcuts import render
from .models import Producto

def productos_list(request):
    productos = Producto.objects.all()
    return render(request, 'productos/list.html', {'productos': productos})
```

## Crea una plantilla

Crea una plantilla para mostrar la lista de productos:
HTML

```
{% extends 'base.html' %}

{% block content %}
    <ul>
        {% for producto in productos %}
            <li>{{ producto.nombre }} - {{ producto.precio }}</li>
        {% endfor %}
    </ul>
{% endblock %}
```

## Ejecuta la aplicación

Ejecuta la aplicación para ver la lista de productos:

```
python manage.py runserver
```

Ejemplo de salida

Producto 1 - 100.00
Producto 2 - 200.00
Producto 3 - 300.00

## Explicación

Los pasos anteriores explican cómo integrar Django y Oracle para crear una aplicación web simple que muestra una lista de productos.

En el paso 1, instalamos las dependencias de Python para Django y Oracle.

En el paso 2, creamos un proyecto Django nuevo.

En el paso 3, configuramos la conexión a la base de datos Oracle.

En el paso 4, creamos un modelo de datos para representar nuestros datos en la base de datos Oracle.

En el paso 5, migramos el modelo de datos a la base de datos Oracle.

En el paso 6, creamos una vista para mostrar una lista de productos.

En el paso 7, creamos una plantilla para mostrar la lista de productos.

En el paso 8, ejecutamos la aplicación para ver la lista de productos.


# Previo a esto, Instalar Sql Client Oracle

link
https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html

https://yum.oracle.com/oracle-instant-client.html

https://csiandal.medium.com/install-oracle-instant-client-on-ubuntu-4ffc8fdfda08

https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html

# Instrucciones de instalar un RPM en Ubuntu

https://www.rosehosting.com/blog/how-to-install-rpm-packages-on-ubuntu/


## Step 1: Add the Universe Repository

```
sudo add-apt-repository universe

```

## Step 2: Update apt-get
```
sudo apt-get update

```

## Step 3: Install Alien package

```
sudo apt-get install alien
```

## Step 4: Convert .rpm package to .deb

```
sudo alien <name of package>.rpm
```

## Step 5: Install the Converted Package

```
sudo dpkg -i <name of package>.deb
```

## Step 6: Install RPM Package Directly Onto the System on Ubuntu

```
sudo alien -i <name of package>.rpm
```
