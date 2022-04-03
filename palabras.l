%option noyywrap
%{
#include <stdio.h>
int con=0, ext=0;
%}

%%
if|it|the|at|to {printf("%s es una palabra de lista\n",yytext);++con;}
[a-zA-Z]+ {printf("%s no es una palabra de lista\n",yytext);++ext;}
. {ECHO;}
[\n] {printf("%d palabras de lista %d palabras fuera de lista\n",con,ext);} 
%%

int main(){
    yylex();
    return 1;
}