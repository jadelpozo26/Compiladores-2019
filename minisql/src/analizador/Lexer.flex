
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
    {TABLE} {  
                      return symbol(sym.TABLE,  (yytext())); }
    {TRUNCATE} {
                      return symbol(sym.TRUNCATE,  (yytext())); }
    {ENTER} {}
    {WHITE} {}
    {DROP} {   
                      return symbol(sym.DROP,  (yytext())); }
	{IF} {  
                      return symbol(sym.IF,  (yytext())); }
	{EXISTS} {  
                      return symbol(sym.EXISTS,  (yytext())); }	
    {DATABASE} {  
                      return symbol(sym.DATABASE,  (yytext())); }				  
	{USER} {  
                      return symbol(sym.USER,  (yytext())); }
    {VIEW} {  
                      return symbol(sym.VIEW,  (yytext())); }
    {COMMIT} {  
                      return symbol(sym.COMMIT,  (yytext())); }
    {TRAN} {  
                      return symbol(sym.TRAN,  (yytext())); }
    {TRANSACTION} {  
                      return symbol(sym.TRANSACTION,  (yytext())); }
    {WITH} {  
                      return symbol(sym.WITH,  (yytext())); }
    {DELAYED_DURABILITY} {  
                      return symbol(sym.DELAYED_DURABILITY,  (yytext())); }
    {OFF} {  
                      return symbol(sym.OFF,  (yytext())); }
    {ON} {  
                      return symbol(sym.ON,  (yytext())); }
    {ROLLBACK} {  
                      return symbol(sym.ROLLBACK,  (yytext())); }
    {SAVE} {  
                      return symbol(sym.SAVE,  (yytext())); }
    {BEGIN} {  
                      return symbol(sym.BEGIN,  (yytext())); }
    {MARK} {  
                      return symbol(sym.MARK,  (yytext())); }
    {INSERT} {  
                      return symbol(sym.INSERT,  (yytext())); }
    {TOP}  {  
                      return symbol(sym.TOP,  (yytext())); }
    {PERCENT} {  
                      return symbol(sym.PERCENT,  (yytext())); }
    {OPENQUERY} {  
                      return symbol(sym.OPENQUERY,  (yytext())); }
    {OPENROWSET} {  
                      return symbol(sym.OPENROWSET,  (yytext())); }
    {VALUES} {  
                      return symbol(sym.VALUES,  (yytext())); }
    {DEFAULT} {  
                      return symbol(sym.DEFAULT,  (yytext())); }
    {NULL} {  
                      return symbol(sym.NULL,  (yytext())); }
    {OUTPUT} {  
                      return symbol(sym.OUTPUT,  (yytext())); }	
    {INTO} {  
                      return symbol(sym.INTO,  (yytext())); }	

    {EXEC} {  
                      return symbol(sym.EXEC,  (yytext())); }

    {EXECUTE} {  
                        return symbol(sym.EXECUTE,  (yytext())); }
    {AVG} {  
                        return symbol(sym.AVG,  (yytext())); }
    {COUNT} {  
                        return symbol(sym.COUNT,  (yytext())); }
    {MAX} {  
                        return symbol(sym.MAX,  (yytext())); }
    {MIN} {  
                        return symbol(sym.MIN,  (yytext())); }
    {SUM} {  
                        return symbol(sym.SUM,  (yytext())); }
    {ALL} {  
                        return symbol(sym.ALL,  (yytext())); }
    {DISTINCT} {  
                        return symbol(sym.DISTINCT,  (yytext())); }
    {DELETED} {  
                        return symbol(sym.DELETED,  (yytext())); }
    {INSERTED} {  
                        return symbol(sym.INSERTED,  (yytext())); }	
    {ENTERODECIMAL} {  
                      return symbol(sym.ENTERODECIMAL,  (yytext())); }
    {DOUBLENUM} {  
                      return symbol(sym.DOUBLENUM,  (yytext())); }	 
    {NULL} {  
                      return symbol(sym.NULL,  (yytext())); }	
    {AS} {  
                      return symbol(sym.AS,  (yytext())); }
    {NOT} {  
                      return symbol(sym.NOT,  (yytext())); } 
    {AND} {  
                      return symbol(sym.AND,  (yytext())); }
    {OR} {  
                      return symbol(sym.OR,  (yytext())); }
    {LIKE} {  
                      return symbol(sym.LIKE,  (yytext())); }
	{CONTAINS} {  
                      return symbol(sym.CONTAINS,  (yytext())); }
    {FREETEXT} {  
                      return symbol(sym.FREETEXT,  (yytext())); }
    {IS} {  
                      return symbol(sym.IS,  (yytext())); }
    {BETWEEN} {  
                      return symbol(sym.BETWEEN,  (yytext())); }
    {IN} {  
                      return symbol(sym.IN,  (yytext())); }
    {UPDATE} {  
                      return symbol(sym.UPDATE,  (yytext())); }
    {SET} {  
                      return symbol(sym.SET,  (yytext())); }
    {WRITE} {  
                      return symbol(sym.WRITE,  (yytext())); }
    {WHERE} {  
                      return symbol(sym.WHERE,  (yytext())); }
    {UNPIVOT} {  
                      return symbol(sym.UNPIVOT,  (yytext())); }
    {FOR} {  
                      return symbol(sym.FOR,  (yytext())); }
    {PIVOT} {  
                      return symbol(sym.PIVOT,  (yytext())); }
    {TABLESAMPLE} {  
                      return symbol(sym.TABLESAMPLE,  (yytext())); }
    {ROWS} {  
                      return symbol(sym.ROWS,  (yytext())); }
    {CROSS} {  
                      return symbol(sym.CROSS,  (yytext())); }
    {JOIN} {  
                      return symbol(sym.JOIN,  (yytext())); }
    {LEFT} {  
                      return symbol(sym.LEFT,  (yytext())); }
    {RIGHT} {  
                      return symbol(sym.RIGHT,  (yytext())); }
    {FULL} {  
                      return symbol(sym.FULL,  (yytext())); }
    {OUTER} {  
                      return symbol(sym.OUTER,  (yytext())); }
    {FROM} {  
                      return symbol(sym.FROM,  (yytext())); }
    {CURRENT} {  
                      return symbol(sym.CURRENT,  (yytext())); }
    {OF} {  
                      return symbol(sym.OF,  (yytext())); }
    {GLOBAL} {  
                      return symbol(sym.GLOBAL,  (yytext())); }
    {DELETE} {  
                      return symbol(sym.DELETE,  (yytext())); }
    {INNER} {  
                      return symbol(sym.INNER,  (yytext())); }
    {ORDER} {  
                      return symbol(sym.ORDER,  (yytext())); }
    {BY} {  
                      return symbol(sym.BY,  (yytext())); }
    {HAVING} {  
                      return symbol(sym.HAVING,  (yytext())); }
    {IDENTITY} {  
                      return symbol(sym.IDENTITY,  (yytext())); }
    {ROWGUID} {  
                      return symbol(sym.ROWGUID,  (yytext())); }
    {ASC} {  
                      return symbol(sym.ASC,  (yytext())); }
    {DESC} {  
                      return symbol(sym.DESC,  (yytext())); }
    {COLLATE} {  
                      return symbol(sym.COLLATE,  (yytext())); }
    {SELECT} {  
                      return symbol(sym.SELECT,  (yytext())); }
    {GROUP} {  
                      return symbol(sym.GROUP,  (yytext())); }
    {CREATE} {  
                      return symbol(sym.CREATE,  (yytext())); }
    {CONTAINMENT} {  
                      return symbol(sym.CONTAINMENT,  (yytext())); } 
    {NONE} {  
                      return symbol(sym.NONE,  (yytext())); }
    {PARTIAL} {  
                      return symbol(sym.PARTIAL,  (yytext())); }
    {PRIMARY} {  
                      return symbol(sym.PRIMARY,  (yytext())); }
    {LOG} {  
                      return symbol(sym.LOG,  (yytext())); }
    {FILEGROUP} {  
                      return symbol(sym.FILEGROUP,  (yytext())); }
    {FILESTREAM} {  
                      return symbol(sym.FILESTREAM,  (yytext())); }
    {MEMORY_OPTIMIZED_DATA} {  
                      return symbol(sym.MEMORY_OPTIMIZED_DATA,  (yytext())); }
    {NAME} {  
                      return symbol(sym.NAME,  (yytext())); }
    {FILENAME} {  
                      return symbol(sym.FILENAME,  (yytext())); }
    {SIZE} {  
                      return symbol(sym.SIZE,  (yytext())); }
    {MAXSIZE} {  
                      return symbol(sym.MAXSIZE,  (yytext())); }
    {UNLIMITED} {  
                      return symbol(sym.UNLIMITED,  (yytext())); }
    {FILEGROWTH} {  
                      return symbol(sym.FILEGROWTH,  (yytext())); }
    {KB} {  
                      return symbol(sym.KB,  (yytext())); }
    {MB} {  
                      return symbol(sym.MB,  (yytext())); }
    {GB} {  
                      return symbol(sym.GB,  (yytext())); }
    {TB} {  
                      return symbol(sym.TB,  (yytext())); }
    {SNAPSHOT} {  
                      return symbol(sym.SNAPSHOT,  (yytext())); }
    {ATTACH} {  
                      return symbol(sym.ATTACH,  (yytext())); }
    {ATTACH_REBUILD_LOG} {  
                      return symbol(sym.ATTACH_REBUILD_LOG,  (yytext())); }
    {SNAPSHOT} {  
                      return symbol(sym.SNAPSHOT,  (yytext())); }
    {ATTACH} {  
                      return symbol(sym.ATTACH,  (yytext())); }
    {ATTACH_REBUILD_LOG} {  
                      return symbol(sym.ATTACH_REBUILD_LOG,  (yytext())); }
    {LOGIN} {  
                      return symbol(sym.LOGIN,  (yytext())); }
    {PASSWORD} {  
                      return symbol(sym.PASSWORD,  (yytext())); }
    {WITHOUT} {  
                      return symbol(sym.WITHOUT,  (yytext())); }
    {CERTIFICATE} {  
                      return symbol(sym.CERTIFICATE,  (yytext())); }
    {ASYMMETRIC} {  
                      return symbol(sym.ASYMMETRIC,  (yytext())); }
    {KEY} {  
                      return symbol(sym.KEY,  (yytext())); }
    {CHECK} {  
                      return symbol(sym.CHECK,  (yytext())); }
    {OPTION} {  
                      return symbol(sym.OPTION,  (yytext())); }
    {GO} {  
                      return symbol(sym.GO,  (yytext())); }
    {UNIQUE} {  
                      return symbol(sym.UNIQUE,  (yytext())); }
    {CLUSTERED} {  
                      return symbol(sym.CLUSTERED,  (yytext())); }
    {NONCLUSTERED} {  
                      return symbol(sym.NONCLUSTERED,  (yytext())); }
    {INCLUDE} {  
                      return symbol(sym.INCLUDE,  (yytext())); }
    {FILESTREAM_ON} {  
                      return symbol(sym.FILESTREAM_ON,  (yytext())); }
    {INDEX} {  
                      return symbol(sym.INDEX,  (yytext())); }
    {TO} {  
                      return symbol(sym.TO,  (yytext())); }
    {MODIFY} {  
                      return symbol(sym.MODIFY,  (yytext())); }
    {ADD} {  
                      return symbol(sym.ADD,  (yytext())); }
    {FILE} {  
                      return symbol(sym.FILE,  (yytext())); }
    {REMOVE} {  
                      return symbol(sym.REMOVE,  (yytext())); }
    {ALTER} {  
                      return symbol(sym.ALTER,  (yytext())); }
    {DEFAULT_LANGUAGE} {  
                      return symbol(sym.DEFAULT_LANGUAGE,  (yytext())); }
    {DEFAULT_SCHEMA} {  
                      return symbol(sym.DEFAULT_SCHEMA,  (yytext())); }
    {ALLOW_ENCRYPTED_VALUE_MODIFICATIONS} {  
                      return symbol(sym.ALLOW_ENCRYPTED_VALUE_MODIFICATIONS,  (yytext())); }
    {OLD_PASSWORD} {  
                      return symbol(sym.OLD_PASSWORD,  (yytext())); }
    {REBUILD} {  
                      return symbol(sym.REBUILD,  (yytext())); }
    {DISABLE} {  
                      return symbol(sym.DISABLE,  (yytext())); }
    {REORGANIZE} {  
                      return symbol(sym.REORGANIZE,  (yytext())); }
    {RESUME} {  
                      return symbol(sym.RESUME,  (yytext())); }
    {PAUSE} {  
                      return symbol(sym.PAUSE,  (yytext())); }
    {ABORT} {  
                      return symbol(sym.ABORT,  (yytext())); }
    {ALLOW_ROW_LOCKS} {  
                      return symbol(sym.ALLOW_ROW_LOCKS,  (yytext())); }
    {ALLOW_PAGE_LOCKS} {  
                      return symbol(sym.ALLOW_PAGE_LOCKS,  (yytext())); }
    {OPTIMIZE_FOR_SEQUENTIAL_KEY} {  
                      return symbol(sym.OPTIMIZE_FOR_SEQUENTIAL_KEY,  (yytext())); }
    {IGNORE_DUP_KEY} {  
                      return symbol(sym.IGNORE_DUP_KEY,  (yytext())); }
    {STATISTICS_NORECOMPUTE} {  
                      return symbol(sym.STATISTICS_NORECOMPUTE,  (yytext())); }
    {PARTITION} {  
                      return symbol(sym.PARTITION,  (yytext())); }
    {TEXTIMAGE_ON} {  
                      return symbol(sym.TEXTIMAGE_ON,  (yytext())); }
    {COLUMNSTORE} {  
                      return symbol(sym.COLUMNSTORE,  (yytext())); }
    {FILLFACTOR} {  
                      return symbol(sym.FILLFACTOR,  (yytext())); }
    {FOREIGN} {  
                      return symbol(sym.FOREIGN,  (yytext())); }
    {REFERENCES} {  
                      return symbol(sym.REFERENCES,  (yytext())); }
    {REPLICATION} {  
                      return symbol(sym.REPLICATION,  (yytext())); }
    {PERSISTED} {  
                      return symbol(sym.PERSISTED,  (yytext())); }
    {SPARSE} {  
                      return symbol(sym.SPARSE,  (yytext())); }
    {MASKED} {  
                      return symbol(sym.MASKED,  (yytext())); }
    {FUNCTION} {  
                      return symbol(sym.FUNCTION,  (yytext())); }
    {CONSTRAINT} {  
                      return symbol(sym.CONSTRAINT,  (yytext())); }
    {GENERATED} {  
                      return symbol(sym.GENERATED,  (yytext())); }
    {ALWAYS} {  
                      return symbol(sym.ALWAYS,  (yytext())); }
    {ROW} {  
                      return symbol(sym.ROW,  (yytext())); }
    {START} {  
                      return symbol(sym.START,  (yytext())); }
    {END} {  
                      return symbol(sym.END,  (yytext())); }
    {HIDDEN} {  
                      return symbol(sym.HIDDEN,  (yytext())); }
    {ROWGUIDCOL} {  
                      return symbol(sym.ROWGUIDCOL,  (yytext())); }
    {ACTION} {  
                      return symbol(sym.ACTION,  (yytext())); }
    {CASCADE} {  
                      return symbol(sym.CASCADE,  (yytext())); }
    {BIT} {  
                      return symbol(sym.BIT,  (yytext())); }
    {INT} {  
                      return symbol(sym.INT,  (yytext())); }
    {INTEGER} {  
                      return symbol(sym.INTEGER,  (yytext())); }
    {FLOAT} {  
                      return symbol(sym.FLOAT,  (yytext())); }
    {VARCHAR} {  
                      return symbol(sym.VARCHAR,  (yytext())); }
    {DATE} {  
                      return symbol(sym.DATE,  (yytext())); }
    {REAL} {  
                      return symbol(sym.REAL,  (yytext())); }
    {DECIMAL} {  
                      return symbol(sym.DECIMAL,  (yytext())); }
    {NUMERIC} {  
                      return symbol(sym.NUMERIC,  (yytext())); }
    {SMALLINT} {  
                      return symbol(sym.SMALLINT,  (yytext())); }
    {TIME} {  
                      return symbol(sym.TIME,  (yytext())); }
    {CHAR} {  
                      return symbol(sym.CHAR,  (yytext())); }
    {NCHAR} {  
                      return symbol(sym.NCHAR,  (yytext())); }
    {NO} {  
                      return symbol(sym.NO,  (yytext())); }
    {COLUMN} {  
                      return symbol(sym.COLUMN,  (yytext())); }
    {NOCHECK} {  
                      return symbol(sym.NOCHECK,  (yytext())); }
    {PROC} {  
                      return symbol(sym.PROC,  (yytext())); }
    {PROCEDURE} {  
                      return symbol(sym.PROCEDURE,  (yytext())); }
    {ENCRYPTION} {  
                      return symbol(sym.ENCRYPTION,  (yytext())); }
    {RECOMPILE} {  
                      return symbol(sym.RECOMPILE,  (yytext())); }
    {CALLER} {  
                      return symbol(sym.CALLER,  (yytext())); }
    {SELF} {  
                      return symbol(sym.SELF,  (yytext())); }
    {OWNER} {  
                      return symbol(sym.OWNER,  (yytext())); }
    {VARYING} {  
                      return symbol(sym.VARYING,  (yytext())); }
    {OUT} {  
                      return symbol(sym.OUT,  (yytext())); }
    {READONLY} {  
                      return symbol(sym.READONLY,  (yytext())); }
    {CURSOR} {  
                      return symbol(sym.CURSOR,  (yytext())); }
    {DECLARE} {  
                      return symbol(sym.DECLARE,  (yytext())); }
    {INSENSITIVE} {  
                      return symbol(sym.INSENSITIVE,  (yytext())); }
    {SCROLL} {  
                      return symbol(sym.SCROLL,  (yytext())); }
    {OPEN} {  
                      return symbol(sym.OPEN,  (yytext())); }
    {FETCH} {  
                      return symbol(sym.FETCH,  (yytext())); }
    {NEXT} {  
                      return symbol(sym.NEXT,  (yytext())); }
    {CLOSE} {  
                      return symbol(sym.CLOSE,  (yytext())); }
    {LOCAL} {  
                      return symbol(sym.LOCAL,  (yytext())); }
    {FORWARD_ONLY} {  
                      return symbol(sym.FORWARD_ONLY,  (yytext())); }
    {STATIC} {  
                      return symbol(sym.STATIC,  (yytext())); }
    {KEYSET} {  
                      return symbol(sym.KEYSET,  (yytext())); }
    {DYNAMIC} {  
                      return symbol(sym.DYNAMIC,  (yytext())); }
    {FAST_FORWARD} {  
                      return symbol(sym.FAST_FORWARD,  (yytext())); }
    {READ_ONLY} {  
                      return symbol(sym.READ_ONLY,  (yytext())); }
    {SCROLL_LOCKS} {  
                      return symbol(sym.SCROLL_LOCKS,  (yytext())); }
    {OPTIMISTIC} {  
                      return symbol(sym.OPTIMISTIC,  (yytext())); }
    {TYPE_WARNING} {  
                      return symbol(sym.TYPE_WARNING,  (yytext())); }
    {WHILE} {  
                      return symbol(sym.WHILE,  (yytext())); }
    {FETCH_STATUS} {  
                      return symbol(sym.FETCH_STATUS,  (yytext())); }
    {DEALLOCATE} {  
                      return symbol(sym.DEALLOCATE,  (yytext())); }
    {RETURN} {  
                      return symbol(sym.RETURN,  (yytext())); }
    {RETURNS} {  
                      return symbol(sym.RETURNS,  (yytext())); }
    {NULLIF} {  
                      return symbol(sym.NULLIF,  (yytext())); }
    {SUBSTRING} {  
                      return symbol(sym.SUBSTRING,  (yytext())); }
    {TRANSLATE} {  
                      return symbol(sym.TRANSLATE,  (yytext())); }
    {LOWER} {  
                      return symbol(sym.LOWER,  (yytext())); }
    {UPPER} {  
                      return symbol(sym.UPPER,  (yytext())); }
    {TRIM} {  
                      return symbol(sym.TRIM,  (yytext())); }


  //TOKEN PARA OPERADORES Y CARACTERES DE PUNTUACION

  {STRINGA} { 
                      return symbol(sym.STRINGA, (yytext()));}

    {SUMA} { 
                      return symbol(sym.SUMA, (yytext()));}

    {RESTA} { 
                      return symbol(sym.RESTA, (yytext()));}
    {MULTI} { 
                      return symbol(sym.MULTI, (yytext()));}
    {DIV} { 
                      return symbol(sym.DIV, (yytext()));}
    {PORCENTAJE} { 
                      return symbol(sym.PORCENTAJE, (yytext()));}
    {MENORQUE} { 
                      return symbol(sym.MENORQUE, (yytext()));}
    {MENORIGUAL} { 
                      return symbol(sym.MENORIGUAL, (yytext()));}
    {MAYORQUE} {{ 
                      return symbol(sym.MAYORQUE, (yytext()));}}
    {MAYORIGUAL} { 
                      return symbol(sym.MAYORIGUAL, (yytext()));}
    {IGUAL} { 
                      return symbol(sym.IGUAL, (yytext()));}
    {DOBLEIGUAL} { 
                      return symbol(sym.DOBLEIGUAL, (yytext()));}
    {DIFERENTE} { 
                      return symbol(sym.DIFERENTE, (yytext()));}
    {OPAND} { 
                      return symbol(sym.OPAND, (yytext()));}
    {OPOR} { 
                      return symbol(sym.OPOR, (yytext()));}
    {ADMIRACION} { 
                      return symbol(sym.ADMIRACION, (yytext()));}
    {PUNTOCOMA} { 
                      return symbol(sym.PUNTOCOMA, (yytext()));}
    {COMA} { 
                      return symbol(sym.COMA, (yytext()));}
    {PUNTO} { 
                      return symbol(sym.PUNTO, (yytext()));}
    {BRACKETIZQ} { 
                      return symbol(sym.BRACKETIZQ, (yytext()));}
    {BRACKETDER} { 
                      return symbol(sym.BRACKETDER, (yytext()));}
    {PARENTESISIZQ} { 
                      return symbol(sym.PARENTESISIZQ, (yytext()));}
    {PARENTESISDER} { 
                      return symbol(sym.PARENTESISDER, (yytext()));}
    {CORCHETEIZQ} { 
                      return symbol(sym.CORCHETEIZQ, (yytext()));}
    {CORCHETEDER} { 
                      return symbol(sym.CORCHETEDER, (yytext()));}
    {BRACKETS} { 
                      return symbol(sym.BRACKETS, (yytext()));}
    {PARENTESIS} { 
                      return symbol(sym.PARENTESIS, (yytext()));}
    {CORCHETES} { 
                      return symbol(sym.CORCHETES, (yytext()));}
    {ARROBA} { 
                      return symbol(sym.ARROBA, (yytext()));}
    {NUMERAL} { 
                      return symbol(sym.NUMERAL, (yytext()));}
    {DOBLENUMERAL} { 
                      return symbol(sym.DOBLENUMERAL, (yytext()));}
    {DIFIGUAL} {  
                      return symbol(sym.DIFIGUAL,  (yytext())); }
    {DIFMAYOR} {  
                      return symbol(sym.DIFMAYOR,  (yytext())); }
    {DIFMENOR} {  
                      return symbol(sym.DIFMENOR,  (yytext())); }
    {MAYORMENOR} {  
                      return symbol(sym.MAYORMENOR,  (yytext())); }
    {PUNTOPUNTO} {  
                      return symbol(sym.PUNTOPUNTO,  (yytext())); }
    {DOLAR} {  
                      return symbol(sym.DOLAR,  (yytext())); }




	{IDENTIFICADOR} {    
                      return symbol(sym.IDENTIFICADOR, (yytext())); }
  
   
    /* Si se encuentra un entero, se imprime, se regresa un token numero
        que representa un entero y el valor que se obtuvo de la cadena yytext
        al convertirla a entero. yytext es el token encontrado. */

	
}


/* Si el token contenido en la entrada no coincide con ninguna regla
    entonces se marca un token ilegal */
[^]                    { System.out.print(yytext()+"		Linea "+yyline+" Columna: " +yycolumn  + " Simbolo no valido" + "\n"); }

