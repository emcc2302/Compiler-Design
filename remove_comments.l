%{
%}
%%
"//"[^\n]*        ;
"/*"[^*/]*"*/"    ;
.                 { printf("%s", yytext); }
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin, *yyout;
    yyin  = fopen("in.txt",  "r");
    yyout = fopen("out.txt", "w");
    yylex();
    return 0;
}
