/* Lex File for Intermediate Code Generation. */

ALPHA [A-Za-z] DIGIT [0-9]
%%

{ALPHA}({ALPHA}|{DIGIT})* return ID;
{DIGIT}+ {yylval=atoi(yytext); return NUM;} [\n\t] yyterminate();
. return yytext[0];
%%

/*
Output:
        $ ./intermediateCodeGeneration
		Enter the expression: a=(5+b)*(a+5)
		T0 = 5 + b
		T1 = a + 5
		T2 = T0 + T1
		a = T2
*/