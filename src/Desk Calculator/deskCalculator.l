/* Lex File for Desk Calculator. */

DIGIT [0-9]+\.?|[0-9]*\.[0-9]+
%% [ ]
{DIGIT}	{yylval=atof(yytext);return NUM;}
\n|.	{return yytext[0];}

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