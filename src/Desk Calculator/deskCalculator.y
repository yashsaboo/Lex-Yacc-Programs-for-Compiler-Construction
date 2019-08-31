/* YACC File for Desk Calculator. */

%{
#include<ctype.h> #include<stdio.h> #define YYSTYPE double
%}

%token NUM

%left '+''-'
%left '*''/'
%right UMINUS
%%

S	: S E '\n' {printf("Answer: %g \nEnter:\n",$2);}
| S '\n'
|
| error '\n' {yyerror("Error: Enter once more...\n");yyerrok;}
;
E	: E '+' E {$$ = $1 + $3;}
| E '-' E {$$ = $1 - $3;}
| E '*' E {$$ = $1 * $3;}
| E '/' E {$$ = $1 / $3;}
| '('E')' {$$ = $2;}
| '-'E %prec UMINUS {$$=-$2;}
| NUM
;

%%

#include "lex.yy.c"

int main()
{
printf("Enter the expression:"); yyparse();
}

/*
Output:
        $ ./deskCalculator
		Enter the expression: 2.9*2
		Answer: 5.8
		Enter:
		5.5/4
		Answer: 1.375
		Enter:
		12+43
		Answer: 55
*/