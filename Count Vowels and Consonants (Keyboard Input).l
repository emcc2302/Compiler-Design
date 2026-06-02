%{
#include<stdio.h>

int v=0,c=0;
%}

%%
[aeiouAEIOU] {v++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {c++;}
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("Vowels = %d\n",v);
    printf("Consonants = %d\n",c);

    return 0;
}
