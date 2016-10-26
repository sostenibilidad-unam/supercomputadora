## Ejemplo de submit-file para HT-Condor en Patung

Para correrlo:

    $ condor_submit submit_file.condor


Se someten seis jobs. Si se edita el submit file se pueden pedir 1 o
más CPUs. Si se pide uno lo más probable es que los jobs se ejecuten
en Patung, si se piden más los jobs correrán en los nodos de cómputo,
Katsina1-4.

Las salida, bitácora y posibles errores llevan "example_" como prefijo
y se escriben en el mismo directorio.

Más información en [el manual de HT-Condor](http://research.cs.wisc.edu/htcondor/manual/v8.4/2_Users_Manual.html).