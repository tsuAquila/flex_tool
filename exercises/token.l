%{
#include <stdio.h>
%}

%%
[\+\-\*\/]    { printf("OPERATOR: %s\n", yytext); }
[0-9]+        { printf("NUMBER: %s\n", yytext); }
\(            { printf("LEFT PARENTHESIS: %s\n", yytext); }
\)            { printf("RIGHT PARENTHESIS: %s\n", yytext); }
.             { }
%%

int main(int argc, char const *argv[])
{
    yylex();
    return 0;
}