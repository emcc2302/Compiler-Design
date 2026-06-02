%{
#include<stdio.h>

int v=0,c=0;
%}

%%
[aeiouAEIOU] {v++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {c++;}
.|\n ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin=fopen("input.txt","r");

    yylex();

    printf("Vowels = %d\n",v);
    printf("Consonants = %d\n",c);

    return 0;
}
