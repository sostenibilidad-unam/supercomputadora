## Qiime en un ambiente virtual

Para correr qiime en el cluster es necesario instalarlo en un ambiente
virtual de Python.

Por ejemplo:

    $ virtualenv /srv/home/rgarcia/python_envs/qiime
    [... crea el ambiente virtual ...]

Luego hay que activar el ambiente recién creado

    $ source /srv/home/rgarcia/python_envs/qiime/bin/activate
    (qiime) $

Sabmos que el ambiente está activo por que aparece su nombre entre
paréntsis antes del prompt.

Con el ambiente activo se pueden instalar bibliotecas con pip sin
necesidad de permisos especiales, se instala todo en el ambiente
virtual.

Hay que instalar estas cuatro:

    $ pip install cython
    $ pip install numpy
    $ pip install pandas
    $ pip install qiime

Después puede correrse la siguiente prueba.

## Ver la configuracion de qiime en los nodos de cómputo

Para correrlo:

    $ condor_submit submit_file.condor

El script imprime el nombre del host donde corre la tarea, activa el
ambiente virtual de qiime y luego corre print_qiime_config.py -t.

Todo parece estar normal, sólo falla una de las pruebas automáticas
que está buscando un archivo .qiime_config bajo mi home. 