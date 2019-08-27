# Compiladores-2019

Pasos para usar el programa

1. Seleccionar el boton "Buscar .Flex"
2. Buscar el archivo .Flex con las expresiones regulares y palabras reservadas del lenguaje Mini-SQL.
3. Seleccionar el boton "Generar Lexer".
4. Seleccionar "Buscar archivo".
5. Buscar el archivo en lenguaje Mini-SQL que se quiere analizar.
6. Seleccionar "Analizar".
7. En la carpeta del programa se crea un archivo con el mismo nombre del archivo de entrada pero con una extensión .out.


¿Que contiene el archivo de salida?

El archivo contiene una lista detallada de cada palabra reservada, simbolo, string, numero, etc. valido encontrado en el archivo analizado. Muestra datos importantes como la linea donde se encontro la palabra simbolo, etc, las columnas que ocupan y el token al que estan asociado en el archivo generado por el Lexer. Tambien muestra diferentes errores como que un simbolo no sea valido, que los comentarios multilinea no se hayan cerrado o que un identificador haya sido truncado. Estos errores se mostraran en pantalla al momento de presionar el boton de "Analizar".

