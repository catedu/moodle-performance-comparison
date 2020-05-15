# TESTS JMETER CATEDU

* Instalar jmeter
  https://jmeter.apache.org/download_jmeter.cgi

* Configurar en jmeter.sh
```
JVM_ARGS=-Xms512m -Xmx4096m
HEAP="-Xms512m -Xmx4096m"
```

* Ejecutar un test (s o xl)
```
make test_s
make test_xl
```

* Ver resultados en servidor
```
make server
```
```
localhost:8080
```

En la carpeta web, se generan también los resultados individuales.
