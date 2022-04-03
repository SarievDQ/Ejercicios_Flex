%option noyywrap
%{
#include <stdio.h>
int con=0,ext=0;
%}

%%
auto|else|long|switch|break|enum|register|typedef|case|extern|return|union|char|float|short|unsigned|const|for|signed|void {con++; printf("palabra del lenguaje C identificada\n");}
[a-zA-Z]+ {ext++;printf("palabra externa del lenguaje C identificada\n");}
[\n] {printf("%d palabras del lenguaje C\n%d palabras externas\n",con,ext);} 
%%

int main(){
    yylex();
}