%{
#include<stdio.h>
char ch;
%}

%%
[a|e|i|o|u|A|E|I|O|U] {printf("%s is a vowel",yytext);
return 1;
}
.* {printf("%s is a consonant",yytext);
return 1;
}
%%

int main()
{
do{
printf("Enter a character:");
yylex();
printf("Do you want to enter again?");
scanf("%c",&ch);
}while(ch=='y');
}

int yywrap()
{
return 1;
}