%{
    #include <stdio.h>
%}

%%
if | else | while | return  { printf("KEYWORD: %s\n", yytext); }
[a-z]+                      { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+                    { }
.                           { }
%%

int main(int argc, char const *argv[])
{
    yylex();
    return 0;
}
