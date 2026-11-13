Name : Atharv Lulekar 
PRN : 24070521036
Batch : A1

%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+ { yylval = atoi(yytext); return NUMBER;}
[*/+-^%] { return yytext[0]; }
[ \t] { ;}
\n { return '\n'; }
. { printf("Error");}
%%

int yywrap() {
    return 1;
}
