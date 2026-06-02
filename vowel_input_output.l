%{
#include<stdio.h>

int v=0,c=0;
FILE *fp;
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
    fp=fopen("output.txt","w");

    yylex();

    fprintf(fp,"Vowels = %d\n",v);
    fprintf(fp,"Consonants = %d\n",c);

    fclose(fp);

    return 0;
}
