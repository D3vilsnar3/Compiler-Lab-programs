%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *a);
%}
%token ID
%token NUM
%left '+''-'
%left '*''/'
%%

stmnt : expr
expr : expr '+' expr
     | expr '-' expr
     | expr '*' expr
     | expr '/' expr
     | '(' expr ')'
     | ID
     | NUM
     ;
%%
void main()
{
	printf("Enter the Expression: \n");
	yyparse();
}
int yyerror(char *a)
{
	printf("\nInvlaid Variable");
	exit(0);
	return(0);
} 
