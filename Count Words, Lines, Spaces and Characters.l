%{
#include<stdio.h>

int w=0,l=0,s=0,ch=0;
%}

%%
[a-zA-Z]+ {w++;}
\n {l++;}
[ ] {s++;}
. {ch++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("Words = %d\n",w);
    printf("Lines = %d\n",l);
    printf("Spaces = %d\n",s);
    printf("Characters = %d\n",ch);

    return 0;
}
