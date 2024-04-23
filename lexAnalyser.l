%{
#include<stdio.h>
%}

%%
int|float|char|main|print|printf {printf("%s is keyword\n",yytext);}
[=|+|-|/|*|>|<] {printf("%s is operator\n",yytext);}
[(|)|{|}|;] {printf("%s is punctation\n",yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("%s is identifier\n",yytext);}
#.* {printf("%s is a preprocessor directive\n",yytext);}
[0-9]+ {printf("%s is a number\n",yytext);}
%%

int main()
{
FILE *file;
file = fopen("input.txt.txt","r");
if(!file)
{
printf("Cannot open");
exit(0);
}
yyin=file;
yylex();
printf("\n");
return 0;
}
int yywrap()
{
return 1;
}