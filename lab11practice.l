%{
#include<stdio.h>
%}
REG 11(0|1)*
%%
{REG}	{printf("%s is accepted",yytext);}
.*	{printf("%s is not accepted",yytext);}	
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}