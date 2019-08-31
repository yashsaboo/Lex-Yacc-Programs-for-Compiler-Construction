# Lex+Yacc Programs for Compiler Construction
Low-level language has always been fun to learn, since you understand how a computer actually thinks.

## File Details
4 Lab Assignments codes written in Lex and YACC. Lex is a computer program that generates lexical analyzers. YACC provides a tool to produce a parser for a given grammar. YACC is a program designed to compile a LALR (1) grammar. It is used to produce the source code of the syntactic analyzer of the language produced by LALR (1) grammar. The input of YACC is the rule or grammar and the output is a C program.

## Requirements to run the code
Lexical Analyzer, YACC and GCC Compiler

## How to run the code
1. Go to the directory where the file LexFile.l and LexFile.y is present.

2. In terminal, type the following:
```
yacc -d YACCFile.y
lex LexFile.lex
cc y.tab.c lex.yy.c
mv a.out moreDescriptiveName
moreDescriptiveName
```
For more descriptive instructions to run the YACC and Lex file, please refer the following webpage: https://sites.ualberta.ca/dept/chemeng/AIX-43/share/man/info/C/a_doc_lib/aixprggd/genprogc/ie_prog_4lex_yacc.htm

## Reference
"Principles of Modern Compiler Design" by A.A.Puntambekar (ISBN 9789333203739)

### Contributor: [Yash Saboo](https://github.com/yashsaboo)
