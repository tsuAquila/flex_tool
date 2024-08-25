%{
    #include <stdio.h>
%}

%%
\/\/                        { }
if | else | while | return  { printf("KEYWORD: %s\n", yytext); }
[a-z]+                      { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+                    { }
[\+\-\*\/]    { printf("OPERATOR: %s\n", yytext); }
[0-9]+        { printf("NUMBER: %s\n", yytext); }
\(            { printf("LEFT PARENTHESIS: %s\n", yytext); }
\)            { printf("RIGHT PARENTHESIS: %s\n", yytext); }
.                           { }
%%

int main(int argc, char const *argv[])
{
    yylex();
    return 0;
}
