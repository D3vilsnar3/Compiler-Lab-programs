%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *a);
%}
%union{
int no;
char* ID;
}

%type <no> expr
%token ID
%token <no> NUM
%left '+''-'
%left '*''/'
%%
stmnt: expr {printf("%d\n",$1);}
expr:expr '+' expr {$$=$1+$3 ;}
    |expr '-' expr {$$=$1-$3 ;}
    |expr '*' expr {$$=$1*$3 ;}
    |expr '/' expr {$$=$1/$3 ;}
    |NUM
    |ID	
    ;
%%
void main()
{
	printf("Enter the expression \n");
	yyparse();
}
int yyerror(char *a)
{
	printf("Invalid variable");
	exit(0);
	return(0);
}
