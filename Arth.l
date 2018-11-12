%{

#include<stdio.h>
#include "Arth.tab.h"
%}
%%
[a-zA-z][a-zA-Z0-9]* {return ID;}
[0-9]+ {return NUM;}
\n {return 0;}
. {return yytext[0];}
%%
int yywrap()
{	return(1);	
}
