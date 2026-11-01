Name : Rudrakshi Bhandekar 
PRN : 24070521012
Batch : A1

%{
#include "y.tab.h"
%}

%%
[0-9]+ {return NUM;}
[+\-*/] {return yytext[0];}
[ \t] {return 0;}
\n {}
%%

int yywrap() {
    return 1;
}