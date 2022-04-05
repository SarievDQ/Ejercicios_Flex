/*Reconocer terminación ing|ly, contar terminaciónes en ing|ly, mostrar si hay mas ly o mas ing*/ 
%option noyywrap
%{
#include <stdio.h>
int conting=0,contly=0,contline=0;
%}

%%
[a-zA-Z]*ing {printf("\tTerminacion \"ing\" encontrada\n",++conting);}
[a-zA-Z]*ly {printf("\tTerminacion \"ly\" encontrada\n",++contly);}
[\n] {++contline;
    if(contline==5){
        printf("cantidad de \"ing\" encontradas: %i\n",conting);
        printf("cantidad de \"ly\" encontradas: %i\n",contly);
        if(conting>contly){
            printf("Hay mas palabras con \"ing\" en texto\n");
        }
        if(conting<contly){
            printf("Hay mas palabras con \"ly\" en texto\n");
        }
    conting=0;contly=0;contline=0;
    printf("\nIngresa un texto de 5 lineas:\n");
    }
}
%%

int main(){
    printf("Ingresa un texto de 5 lineas:\n");
    yylex();
    return 1;
}