%{
#include<stdio.h>

int k=0,id=0;
%}

%%
int|float|char|double|if|else|for|while|return {k++;}
[a-zA-Z_][a-zA-Z0-9_]* {id++;}
.|\n ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("Keywords = %d\n",k);
    printf("Identifiers = %d\n",id);

    return 0;
}
