/* Lex File for Postfix Evaluator. */

DIGIT [0-9]
%%
{DIGIT}+ {yylval=atoi(yytext); return T_Int;} [-+*/] {return yytext[0];}
\n yyterminate();

/*
Output:
        $ ./postfixEval
           2 3 +
           5
        $ ./postfixEval
           30 6 /
           5
*/