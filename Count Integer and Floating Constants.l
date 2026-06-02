%{
#include<stdio.h>

int i=0,f=0;
%}

%%
[0-9]+ {i++;}
[0-9]+\.[0-9]+ {f++;}
.|\n ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("Integers = %d\n",i);
    printf("Floats = %d\n",f);

    return 0;
}
