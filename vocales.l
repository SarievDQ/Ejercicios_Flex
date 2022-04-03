%option noyywrap
%{
#include <stdio.h>
int conv=0;
%}

%%
a|e|i|o|u {printf("Vocal\n"); conv++;}
. {ECHO;}
[\n] {printf("%d Vocales\n",conv); conv=0;} 
%%

int main(){
    yylex();
}