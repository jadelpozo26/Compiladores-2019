
/* --------------------------Codigo de Usuario----------------------- */
package analizador;

import java_cup.runtime.*;
import java.io.Reader;
      
%% //inicio de opciones
   
/* ------ Seccion de opciones y declaraciones de JFlex -------------- */  
   
/* 
    Cambiamos el nombre de la clase del analizador a Lexer
*/
%class Lexer

/*
    Activar el contador de lineas, variable yyline
    Activar el contador de columna, variable yycolumn
*/
%line
%column
    
/* 
   Activamos la compatibilidad con Java CUP para analizadores
   sintacticos(parser)
*/
%cup


L = [a-zA-Z]
D = [0-9]

TABLE=("TABLE")
TRUNCATE=("TRUNCATE")
DROP=("DROP")
IF=("IF")
EXISTS=("EXISTS")
DATABASE=("DATABASE")
USER=("USER")
VIEW=("VIEW")
COMMIT=("COMMIT")
TRAN=("TRAN")
TRANSACTION=("TRANSACTION")
WITH=("WITH")
DELAYED_DURABILITY=("DELAYED_DURABILITY")
OFF=("OFF")
ON=("ON")
ROLLBACK=("ROLLBACK")
SAVE=("SAVE")
BEGIN =("BEGIN")
MARK=("MARK")
INSERT=("INSERT")
TOP=("TOP")
PERCENT=("PERCENT")
OPENQUERY=("OPENQUERY")
OPENROWSET=("OPENROWSET")
VALUES=("VALUES")
DEFAULT=("DEFAULT")
NULL=("NULL")
OUTPUT=("OUTPUT")
INTO=("INTO")
EXEC=("EXEC")
EXECUTE=("EXECUTE")
AVG=("AVG")
COUNT=("COUNT")
MAX=("MAX")
MIN=("MIN")
SUM=("SUM")
ALL=("ALL")
DISTINCT=("DISTINCT")
DELETED=("DELETED")
INSERTED=("INSERTED")
AS =("AS")

NOT=("NOT")
AND=("AND")
OR=("OR")
LIKE=("LIKE")
CONTAINS=("CONTAINS")
FREETEXT =("FREETEXT")
IS=("IS")
BETWEEN=("BETWEEN")
IN=("IN")
UPDATE =("UPDATE")
SET=("SET")
WRITE=("WRITE")
WHERE=("WHERE")
UNPIVOT=("UNPIVOT")
FOR=("FOR")
PIVOT=("PIVOT")
TABLESAMPLE=("TABLESAMPLE")
ROWS=("ROWS")
CROSS=("CROSS")
JOIN=("JOIN")
LEFT=("LEFT")
RIGHT=("RIGHT")
FULL=("FULL")
OUTER=("OUTER")
FROM=("FROM")
CURRENT=("CURRENT")
OF=("OF")
GLOBAL = ("GLOBAL")
DELETE = ("DELETE")
INNER=("INNER")

ORDER=("ORDER")
BY=("BY")
HAVING=("HAVING")
IDENTITY=("IDENTITY")
ROWGUID=("ROWGUID")
ASC=("ASC")
DESC=("DESC")
COLLATE=("COLLATE")
SELECT=("SELECT")
GROUP =("GROUP")

CREATE=("CREATE")
CONTAINMENT=("CONTAINMENT")
NONE=("NONE")
PARTIAL=("PARTIAL")
PRIMARY=("PRIMARY")
LOG=("LOG")
FILEGROUP=("FILEGROUP")
FILESTREAM=("FILESTREAM")
MEMORY_OPTIMIZED_DATA=("MEMORY_OPTIMIZED_DATA")
NAME=("NAME")
FILENAME=("FILENAME")
SIZE=("SIZE")
MAXSIZE=("MAXSIZE")
UNLIMITED=("UNLIMITED")
FILEGROWTH=("FILEGROWTH")
KB=("KB")
MB=("MB")
GB=("GB")
TB=("TB")
SNAPSHOT=("SNAPSHOT")
ATTACH=("ATTACH")
ATTACH_REBUILD_LOG=("ATTACH_REBUILD_LOG")
LOGIN=("LOGIN")
PASSWORD=("PASSWORD")
WITHOUT=("WITHOUT")
CERTIFICATE=("CERTIFICATE")
ASYMMETRIC=("ASYMMETRIC")
KEY=("KEY")
CHECK=("CHECK")
OPTION=("OPTION")
GO=("GO")
UNIQUE =("UNIQUE")
CLUSTERED =("CLUSTERED")
NONCLUSTERED =("NONCLUSTERED")
INCLUDE=("INCLUDE")
FILESTREAM_ON =("FILESTREAM_ON")
INDEX =("INDEX")
ALTER=("ALTER")
MODIFY=("MODIFY")
ADD=("ADD")
FILE=("FILE")
REMOVE=("REMOVE")
TO=("TO")
DEFAULT_LANGUAGE=("DEFAULT_LANGUAGE")
DEFAULT_SCHEMA=("DEFAULT_SCHEMA")
ALLOW_ENCRYPTED_VALUE_MODIFICATIONS =("ALLOW_ENCRYPTED_VALUE_MODIFICATIONS")
OLD_PASSWORD=("OLD_PASSWORD")
REBUILD=("REBUILD")
DISABLE=("DISABLE")
REORGANIZE=("REORGANIZE")
RESUME=("RESUME")
PAUSE=("PAUSE")
ABORT=("ABORT")
ALLOW_ROW_LOCKS=("ALLOW_ROW_LOCKS")
ALLOW_PAGE_LOCKS=("ALLOW_PAGE_LOCKS")
OPTIMIZE_FOR_SEQUENTIAL_KEY=("OPTIMIZE_FOR_SEQUENTIAL_KEY")
IGNORE_DUP_KEY =("IGNORE_DUP_KEY")
STATISTICS_NORECOMPUTE =("STATISTICS_NORECOMPUTE")
PARTITION=("PARTITION")
TEXTIMAGE_ON =("TEXTIMAGE_ON")
COLUMNSTORE =("COLUMNSTORE")
FILLFACTOR=("FILLFACTOR")
FOREIGN=("FOREIGN")
REFERENCES=("REFERENCES")
REPLICATION=("REPLICATION")
PERSISTED=("PERSISTED")
SPARSE=("SPARSE")
MASKED=("MASKED")
FUNCTION=("FUNCTION")
CONSTRAINT=("CONSTRAINT")
GENERATED=("GENERATED")
ALWAYS=("ALWAYS")
ROW=("ROW")
START=("START")
END=("END")
HIDDEN=("HIDDEN")
ROWGUIDCOL=("ROWGUIDCOL")
ACTION=("ACTION")
CASCADE=("CASCADE")
BIT=("BIT")
INT=("INT")
INTEGER=("INTEGER")
FLOAT=("FLOAT")
VARCHAR=("VARCHAR")
DATE=("DATE")
REAL=("REAL")
DECIMAL=("DECIMAL")
NUMERIC=("NUMERIC")
SMALLINT=("SMALLINT")
TIME=("TIME")
CHAR=("CHAR")
NCHAR=("NCHAR")
NO=("NO")
COLUMN = ("COLUMN")
NOCHECK = ("NOCHECK")
PROC =("PROC")
PROCEDURE=("PROCEDURE")
ENCRYPTION =("ENCRYPTION")
RECOMPILE=("RECOMPILE")
CALLER=("CALLER")
SELF=("SELF")
OWNER=("OWNER")
VARYING=("VARYING")
OUT=("OUT")
READONLY=("READONLY")
CURSOR=("CURSOR")
DECLARE=("DECLARE")
INSENSITIVE=("INSENSITIVE")
SCROLL=("SCROLL")
OPEN=("OPEN")
FETCH=("FETCH")
NEXT=("NEXT")
CLOSE=("CLOSE")
LOCAL=("LOCAL")
FORWARD_ONLY=("FORWARD_ONLY")
STATIC=("STATIC")
KEYSET=("KEYSET")
DYNAMIC=("DYNAMIC")
FAST_FORWARD=("FAST_FORWARD")
READ_ONLY=("READ_ONLY")
SCROLL_LOCKS=("SCROLL_LOCKS")
OPTIMISTIC=("OPTIMISTIC")
TYPE_WARNING=("TYPE_WARNING")
WHILE=("WHILE")
FETCH_STATUS=("FETCH_STATUS")
DEALLOCATE=("DEALLOCATE")
RETURN=("RETURN")
RETURNS=("RETURNS")
NULLIF=("NULLIF")
SUBSTRING=("SUBSTRING")
TRANSLATE=("TRANSLATE")
LOWER=("LOWER")
UPPER=("UPPER")
TRIM=("TRIM")









IDENTIFICADOR = {L}({L}|{D}|("_"))*
STRINGA = ['][^'\n]*[']|[´][^´\n]*[´]
COMENTARIOS = ("--"[^\n]*)
COMENTARIOS2 = "/*"~"*/"
ERRORCOMENTARIOS = "/*"[^"*/"]*
SUMA = ("+")
RESTA = ("-")
MULTI = ("*")
DIV = ("/")
PORCENTAJE = ("%")
MENORQUE = ("<")
MENORIGUAL = ("<=")
MAYORQUE = (">")
MAYORIGUAL = (">=")
IGUAL = ("=")
DOBLEIGUAL = ("==")
DIFERENTE = ("!=")
OPAND = ("&&")
OPOR = ("||")
ADMIRACION = ("!")
PUNTOCOMA = (";")
COMA = (",")
PUNTO = (".")
BRACKETIZQ = ("[")
BRACKETDER = ("]")
PARENTESISIZQ = ("(")
PARENTESISDER = (")")
CORCHETEIZQ = ("{")
CORCHETEDER = ("}")
BRACKETS = ("[]")
PARENTESIS = ("()")
CORCHETES = ("{}")
ARROBA = ("@")
NUMERAL = ("#")
DOBLENUMERAL = ("##")
DOUBLENUM = {D}+("."){D}*([E|e]?[+-]?{D}+)?
ENTERODECIMAL = {D}+
NULL = ("NULL")
DIFIGUAL =("!=")
DIFMAYOR=("!>")
DIFMENOR=("!<")
MAYORMENOR=("<>")
DOLAR=("$")
PUNTOPUNTO =("..")



ENTER = [\n]
CARACT = [^\n]
WHITE = [ \t\r]*
PUNTO = (".")

 
/*
    Declaraciones

    El codigo entre %{  y %} sera copiado integramente en el 
    analizador generado.
*/
%{
    /*  Generamos un java_cup.Symbol para guardar el tipo de token 
        encontrado */
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    /* Generamos un Symbol para el tipo de token encontrado 
       junto con su valor */
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
   

/*
    Macro declaraciones
  
    Declaramos expresiones regulares que despues usaremos en las
    reglas lexicas.
*/
   
/*  Un salto de linea es un \n, \r o \r\n dependiendo del SO   */
Salto = \r|\n|\r\n
   
/* Espacio es un espacio en blanco, tabulador \t, salto de linea 
    o avance de pagina \f, normalmente son ignorados */
Espacio     = {Salto} | [ \t\f]
   
/* Una literal entera es un numero 0 oSystem.out.println("\n*** Generado " + archNombre + "***\n"); un digito del 1 al 9 
    seguido de 0 o mas digitos del 0 al 9 */
Entero = 0 | [1-9][0-9]*


%% //fin de opciones
/* -------------------- Seccion de reglas lexicas ------------------ */
   
/*
   Esta seccion contiene expresiones regulares y acciones. 
   Las acciones son código en Java que se ejecutara cuando se
   encuentre una entrada valida para la expresion regular correspondiente */
   
   /* YYINITIAL es el estado inicial del analizador lexico al escanear.
      Las expresiones regulares solo serán comparadas si se encuentra
      en ese estado inicial. Es decir, cada vez que se encuentra una 
      coincidencia el scanner vuelve al estado inicial. Por lo cual se ignoran
      estados intermedios.*/
   
<YYINITIAL> {
   
	//TOKEN PARA CONSTANTES	

	//TOKEN PARA COMENTARIOS

	"/*"~"*/"   { /* ignora el espacio */ } 
	("--"[^\n]*)   { /* ignora el espacio */ } 	
					  
	//TOKEN DE PALABRAS RESERVADAS
    {TABLE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TABLE,  (yytext())); }
    {TRUNCATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TRUNCATE,  (yytext())); }
    {ENTER} {}
    {WHITE} {}
    {DROP} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DROP,  (yytext())); }
	{IF} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IF,  (yytext())); }
	{EXISTS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.EXISTS,  (yytext())); }	
    {DATABASE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DATABASE,  (yytext())); }				  
	{USER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.USER,  (yytext())); }
    {VIEW} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.VIEW,  (yytext())); }
    {COMMIT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.COMMIT,  (yytext())); }
    {TRAN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TRAN,  (yytext())); }
    {TRANSACTION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TRANSACTION,  (yytext())); }
    {WITH} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.WITH,  (yytext())); }
    {DELAYED_DURABILITY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DELAYED_DURABILITY,  (yytext())); }
    {OFF} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OFF,  (yytext())); }
    {ON} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ON,  (yytext())); }
    {ROLLBACK} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ROLLBACK,  (yytext())); }
    {SAVE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SAVE,  (yytext())); }
    {BEGIN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BEGIN,  (yytext())); }
    {MARK} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MARK,  (yytext())); }
    {INSERT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INSERT,  (yytext())); }
    {TOP}  {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TOP,  (yytext())); }
    {PERCENT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PERCENT,  (yytext())); }
    {OPENQUERY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPENQUERY,  (yytext())); }
    {OPENROWSET} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPENROWSET,  (yytext())); }
    {VALUES} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.VALUES,  (yytext())); }
    {DEFAULT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DEFAULT,  (yytext())); }
    {NULL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NULL,  (yytext())); }
    {OUTPUT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OUTPUT,  (yytext())); }	
    {INTO} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INTO,  (yytext())); }	

    {EXEC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.EXEC,  (yytext())); }

    {EXECUTE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.EXECUTE,  (yytext())); }
    {AVG} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.AVG,  (yytext())); }
    {COUNT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.COUNT,  (yytext())); }
    {MAX} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.MAX,  (yytext())); }
    {MIN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.MIN,  (yytext())); }
    {SUM} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.SUM,  (yytext())); }
    {ALL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.ALL,  (yytext())); }
    {DISTINCT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.DISTINCT,  (yytext())); }
    {DELETED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.DELETED,  (yytext())); }
    {INSERTED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                        return symbol(sym.INSERTED,  (yytext())); }	
    {ENTERODECIMAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ENTERODECIMAL,  (yytext())); }
    {DOUBLENUM} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DOUBLENUM,  (yytext())); }	 
    {NULL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NULL,  (yytext())); }	
    {AS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.AS,  (yytext())); }
    {NOT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NOT,  (yytext())); } 
    {AND} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.AND,  (yytext())); }
    {OR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OR,  (yytext())); }
    {LIKE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LIKE,  (yytext())); }
	{CONTAINS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CONTAINS,  (yytext())); }
    {FREETEXT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FREETEXT,  (yytext())); }
    {IS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IS,  (yytext())); }
    {BETWEEN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BETWEEN,  (yytext())); }
    {IN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IN,  (yytext())); }
    {UPDATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.UPDATE,  (yytext())); }
    {SET} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SET,  (yytext())); }
    {WRITE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.WRITE,  (yytext())); }
    {WHERE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.WHERE,  (yytext())); }
    {UNPIVOT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.UNPIVOT,  (yytext())); }
    {FOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FOR,  (yytext())); }
    {PIVOT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PIVOT,  (yytext())); }
    {TABLESAMPLE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TABLESAMPLE,  (yytext())); }
    {ROWS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ROWS,  (yytext())); }
    {CROSS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CROSS,  (yytext())); }
    {JOIN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.JOIN,  (yytext())); }
    {LEFT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LEFT,  (yytext())); }
    {RIGHT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RIGHT,  (yytext())); }
    {FULL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FULL,  (yytext())); }
    {OUTER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OUTER,  (yytext())); }
    {FROM} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FROM,  (yytext())); }
    {CURRENT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CURRENT,  (yytext())); }
    {OF} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OF,  (yytext())); }
    {GLOBAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.GLOBAL,  (yytext())); }
    {DELETE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DELETE,  (yytext())); }
    {INNER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INNER,  (yytext())); }
    {ORDER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ORDER,  (yytext())); }
    {BY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BY,  (yytext())); }
    {HAVING} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.HAVING,  (yytext())); }
    {IDENTITY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IDENTITY,  (yytext())); }
    {ROWGUID} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ROWGUID,  (yytext())); }
    {ASC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ASC,  (yytext())); }
    {DESC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DESC,  (yytext())); }
    {COLLATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.COLLATE,  (yytext())); }
    {SELECT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SELECT,  (yytext())); }
    {GROUP} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.GROUP,  (yytext())); }
    {CREATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CREATE,  (yytext())); }
    {CONTAINMENT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CONTAINMENT,  (yytext())); } 
    {NONE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NONE,  (yytext())); }
    {PARTIAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PARTIAL,  (yytext())); }
    {PRIMARY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PRIMARY,  (yytext())); }
    {LOG} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LOG,  (yytext())); }
    {FILEGROUP} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILEGROUP,  (yytext())); }
    {FILESTREAM} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILESTREAM,  (yytext())); }
    {MEMORY_OPTIMIZED_DATA} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MEMORY_OPTIMIZED_DATA,  (yytext())); }
    {NAME} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NAME,  (yytext())); }
    {FILENAME} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILENAME,  (yytext())); }
    {SIZE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SIZE,  (yytext())); }
    {MAXSIZE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MAXSIZE,  (yytext())); }
    {UNLIMITED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.UNLIMITED,  (yytext())); }
    {FILEGROWTH} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILEGROWTH,  (yytext())); }
    {KB} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.KB,  (yytext())); }
    {MB} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MB,  (yytext())); }
    {GB} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.GB,  (yytext())); }
    {TB} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TB,  (yytext())); }
    {SNAPSHOT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SNAPSHOT,  (yytext())); }
    {ATTACH} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ATTACH,  (yytext())); }
    {ATTACH_REBUILD_LOG} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ATTACH_REBUILD_LOG,  (yytext())); }
    {SNAPSHOT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SNAPSHOT,  (yytext())); }
    {ATTACH} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ATTACH,  (yytext())); }
    {ATTACH_REBUILD_LOG} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ATTACH_REBUILD_LOG,  (yytext())); }
    {LOGIN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LOGIN,  (yytext())); }
    {PASSWORD} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PASSWORD,  (yytext())); }
    {WITHOUT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.WITHOUT,  (yytext())); }
    {CERTIFICATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CERTIFICATE,  (yytext())); }
    {ASYMMETRIC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ASYMMETRIC,  (yytext())); }
    {KEY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.KEY,  (yytext())); }
    {CHECK} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CHECK,  (yytext())); }
    {OPTION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPTION,  (yytext())); }
    {GO} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.GO,  (yytext())); }
    {UNIQUE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.UNIQUE,  (yytext())); }
    {CLUSTERED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CLUSTERED,  (yytext())); }
    {NONCLUSTERED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NONCLUSTERED,  (yytext())); }
    {INCLUDE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INCLUDE,  (yytext())); }
    {FILESTREAM_ON} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILESTREAM_ON,  (yytext())); }
    {INDEX} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INDEX,  (yytext())); }
    {TO} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TO,  (yytext())); }
    {MODIFY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MODIFY,  (yytext())); }
    {ADD} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ADD,  (yytext())); }
    {FILE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILE,  (yytext())); }
    {REMOVE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REMOVE,  (yytext())); }
    {ALTER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ALTER,  (yytext())); }
    {DEFAULT_LANGUAGE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DEFAULT_LANGUAGE,  (yytext())); }
    {DEFAULT_SCHEMA} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DEFAULT_SCHEMA,  (yytext())); }
    {ALLOW_ENCRYPTED_VALUE_MODIFICATIONS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ALLOW_ENCRYPTED_VALUE_MODIFICATIONS,  (yytext())); }
    {OLD_PASSWORD} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OLD_PASSWORD,  (yytext())); }
    {REBUILD} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REBUILD,  (yytext())); }
    {DISABLE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DISABLE,  (yytext())); }
    {REORGANIZE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REORGANIZE,  (yytext())); }
    {RESUME} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RESUME,  (yytext())); }
    {PAUSE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PAUSE,  (yytext())); }
    {ABORT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ABORT,  (yytext())); }
    {ALLOW_ROW_LOCKS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ALLOW_ROW_LOCKS,  (yytext())); }
    {ALLOW_PAGE_LOCKS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ALLOW_PAGE_LOCKS,  (yytext())); }
    {OPTIMIZE_FOR_SEQUENTIAL_KEY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPTIMIZE_FOR_SEQUENTIAL_KEY,  (yytext())); }
    {IGNORE_DUP_KEY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IGNORE_DUP_KEY,  (yytext())); }
    {STATISTICS_NORECOMPUTE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.STATISTICS_NORECOMPUTE,  (yytext())); }
    {PARTITION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PARTITION,  (yytext())); }
    {TEXTIMAGE_ON} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TEXTIMAGE_ON,  (yytext())); }
    {COLUMNSTORE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.COLUMNSTORE,  (yytext())); }
    {FILLFACTOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FILLFACTOR,  (yytext())); }
    {FOREIGN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FOREIGN,  (yytext())); }
    {REFERENCES} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REFERENCES,  (yytext())); }
    {REPLICATION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REPLICATION,  (yytext())); }
    {PERSISTED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PERSISTED,  (yytext())); }
    {SPARSE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SPARSE,  (yytext())); }
    {MASKED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MASKED,  (yytext())); }
    {FUNCTION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FUNCTION,  (yytext())); }
    {CONSTRAINT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CONSTRAINT,  (yytext())); }
    {GENERATED} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.GENERATED,  (yytext())); }
    {ALWAYS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ALWAYS,  (yytext())); }
    {ROW} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ROW,  (yytext())); }
    {START} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.START,  (yytext())); }
    {END} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.END,  (yytext())); }
    {HIDDEN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.HIDDEN,  (yytext())); }
    {ROWGUIDCOL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ROWGUIDCOL,  (yytext())); }
    {ACTION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ACTION,  (yytext())); }
    {CASCADE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CASCADE,  (yytext())); }
    {BIT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BIT,  (yytext())); }
    {INT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INT,  (yytext())); }
    {INTEGER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INTEGER,  (yytext())); }
    {FLOAT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FLOAT,  (yytext())); }
    {VARCHAR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.VARCHAR,  (yytext())); }
    {DATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DATE,  (yytext())); }
    {REAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.REAL,  (yytext())); }
    {DECIMAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DECIMAL,  (yytext())); }
    {NUMERIC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NUMERIC,  (yytext())); }
    {SMALLINT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SMALLINT,  (yytext())); }
    {TIME} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TIME,  (yytext())); }
    {CHAR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CHAR,  (yytext())); }
    {NCHAR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NCHAR,  (yytext())); }
    {NO} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NO,  (yytext())); }
    {COLUMN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.COLUMN,  (yytext())); }
    {NOCHECK} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NOCHECK,  (yytext())); }
    {PROC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PROC,  (yytext())); }
    {PROCEDURE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PROCEDURE,  (yytext())); }
    {ENCRYPTION} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ENCRYPTION,  (yytext())); }
    {RECOMPILE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RECOMPILE,  (yytext())); }
    {CALLER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CALLER,  (yytext())); }
    {SELF} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SELF,  (yytext())); }
    {OWNER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OWNER,  (yytext())); }
    {VARYING} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.VARYING,  (yytext())); }
    {OUT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OUT,  (yytext())); }
    {READONLY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.READONLY,  (yytext())); }
    {CURSOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CURSOR,  (yytext())); }
    {DECLARE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DECLARE,  (yytext())); }
    {INSENSITIVE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.INSENSITIVE,  (yytext())); }
    {SCROLL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SCROLL,  (yytext())); }
    {OPEN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPEN,  (yytext())); }
    {FETCH} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FETCH,  (yytext())); }
    {NEXT} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NEXT,  (yytext())); }
    {CLOSE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CLOSE,  (yytext())); }
    {LOCAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LOCAL,  (yytext())); }
    {FORWARD_ONLY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FORWARD_ONLY,  (yytext())); }
    {STATIC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.STATIC,  (yytext())); }
    {KEYSET} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.KEYSET,  (yytext())); }
    {DYNAMIC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DYNAMIC,  (yytext())); }
    {FAST_FORWARD} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FAST_FORWARD,  (yytext())); }
    {READ_ONLY} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.READ_ONLY,  (yytext())); }
    {SCROLL_LOCKS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SCROLL_LOCKS,  (yytext())); }
    {OPTIMISTIC} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPTIMISTIC,  (yytext())); }
    {TYPE_WARNING} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TYPE_WARNING,  (yytext())); }
    {WHILE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.WHILE,  (yytext())); }
    {FETCH_STATUS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.FETCH_STATUS,  (yytext())); }
    {DEALLOCATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DEALLOCATE,  (yytext())); }
    {RETURN} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RETURN,  (yytext())); }
    {RETURNS} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RETURNS,  (yytext())); }
    {NULLIF} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NULLIF,  (yytext())); }
    {SUBSTRING} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SUBSTRING,  (yytext())); }
    {TRANSLATE} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TRANSLATE,  (yytext())); }
    {LOWER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.LOWER,  (yytext())); }
    {UPPER} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.UPPER,  (yytext())); }
    {TRIM} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.TRIM,  (yytext())); }


  //TOKEN PARA OPERADORES Y CARACTERES DE PUNTUACION

  {STRINGA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.STRINGA, (yytext()));}

    {SUMA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.SUMA, (yytext()));}

    {RESTA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.RESTA, (yytext()));}
    {MULTI} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MULTI, (yytext()));}
    {DIV} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DIV, (yytext()));}
    {PORCENTAJE} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PORCENTAJE, (yytext()));}
    {MENORQUE} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MENORQUE, (yytext()));}
    {MENORIGUAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MENORIGUAL, (yytext()));}
    {MAYORQUE} {{System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MAYORQUE, (yytext()));}}
    {MAYORIGUAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MAYORIGUAL, (yytext()));}
    {IGUAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IGUAL, (yytext()));}
    {DOBLEIGUAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DOBLEIGUAL, (yytext()));}
    {DIFERENTE} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DIFERENTE, (yytext()));}
    {OPAND} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPAND, (yytext()));}
    {OPOR} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.OPOR, (yytext()));}
    {ADMIRACION} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ADMIRACION, (yytext()));}
    {PUNTOCOMA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PUNTOCOMA, (yytext()));}
    {COMA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.COMA, (yytext()));}
    {PUNTO} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PUNTO, (yytext()));}
    {BRACKETIZQ} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BRACKETIZQ, (yytext()));}
    {BRACKETDER} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BRACKETDER, (yytext()));}
    {PARENTESISIZQ} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PARENTESISIZQ, (yytext()));}
    {PARENTESISDER} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PARENTESISDER, (yytext()));}
    {CORCHETEIZQ} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CORCHETEIZQ, (yytext()));}
    {CORCHETEDER} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CORCHETEDER, (yytext()));}
    {BRACKETS} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.BRACKETS, (yytext()));}
    {PARENTESIS} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PARENTESIS, (yytext()));}
    {CORCHETES} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.CORCHETES, (yytext()));}
    {ARROBA} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.ARROBA, (yytext()));}
    {NUMERAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.NUMERAL, (yytext()));}
    {DOBLENUMERAL} {System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DOBLENUMERAL, (yytext()));}
    {DIFIGUAL} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DIFIGUAL,  (yytext())); }
    {DIFMAYOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DIFMAYOR,  (yytext())); }
    {DIFMENOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DIFMENOR,  (yytext())); }
    {MAYORMENOR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.MAYORMENOR,  (yytext())); }
    {PUNTOPUNTO} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.PUNTOPUNTO,  (yytext())); }
    {DOLAR} {   System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn + "\n"); 
                      return symbol(sym.DOLAR,  (yytext())); }




	{IDENTIFICADOR} {   System.out.print(yytext()+"		Linea "+yyline+ " Columna: " +yycolumn + "\n"); 
                      return symbol(sym.IDENTIFICADOR, (yytext())); }
  
   
    /* Si se encuentra un entero, se imprime, se regresa un token numero
        que representa un entero y el valor que se obtuvo de la cadena yytext
        al convertirla a entero. yytext es el token encontrado. */

	
}


/* Si el token contenido en la entrada no coincide con ninguna regla
    entonces se marca un token ilegal */
[^]                    { throw new Error("Caracter ilegal <"+yytext()+">"); }

