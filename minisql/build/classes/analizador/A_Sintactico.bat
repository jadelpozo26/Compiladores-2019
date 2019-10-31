SET JAVA_HOME="‪C:\Program Files\Java\jdk-13\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\jadel\Desktop\Compiladores-2019\minisql\src\analizador
java -jar C:\Users\jadel\Desktop\Compiladores-2019\minisql\lib\java-cup-11a.jar -expect 300 A_Sintactico.cup
pause
