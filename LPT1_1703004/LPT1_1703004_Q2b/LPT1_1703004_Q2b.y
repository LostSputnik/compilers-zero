%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}


%token SENTENCE
%start pro


%%
pro: SENTENCE {printf("ACCEPTED\n");} 
    ;
%%

int main()
{
    yyparse();
    printf("Parsing Finished");
    return 0;
}


void yyerror(char *s)
{
    printf("\nNot Accepted\n");
}
