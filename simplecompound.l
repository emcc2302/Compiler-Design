%{
#include<stdio.h>
#include<string.h>
int flag = 0;
%}

%%
[a-zA-Z]+  {
               char *w = yytext;
               if(strcmp(w,"and")==0      || strcmp(w,"or")==0  ||
                  strcmp(w,"but")==0      || strcmp(w,"because")==0 ||
                  strcmp(w,"if")==0       || strcmp(w,"then")==0 ||
                  strcmp(w,"nevertheless")==0)
                   flag = 1;
           }
[ \t]      ;
\n         { return 0; }
.          ;
%%

int yywrap() { return 1; }

int main()
{
    printf("Enter the sentence:\n");
    yylex();

    if(flag == 0)
        printf("Simple Sentence\n");
    else
        printf("Compound Sentence\n");

    return 0;
}
