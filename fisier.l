%{
#include <stdlib.h>
#include "fisier.h"
#include "fisier.tab.h"
void yyerror(char *);
%}
%%
[a-z] {
yylval.sIndex = *yytext - 'a';
return VARIABLE;
}
[A-Z] {
yylval.sIndex = *yytext - 'A';
return VARIABLE;
}
0 {
yylval.iValue = atoi(yytext);
return INTEGER;
}
[1-9][0-9]* {
yylval.iValue = atoi(yytext);
return INTEGER;
}
[-()<>=+*/;{}.] {
return *yytext;
}
">=" return GE;
"<=" return LE;
"==" return EQ;
"!=" return NE;
"while" return WHILE;
"if" return IF;
"else" return ELSE;
"print" return PRINT;
"do" return DO;
"write" return WRITE;
"++" return INC;
"--" return DEC;
"for" return FOR;
[ \t\n]+ ; /* ignore whitespace */
\/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\/ ;
 "//"[^}\n]*
. yyerror("Unknown character");
%%
int yywrap(void) {
return 1;
}