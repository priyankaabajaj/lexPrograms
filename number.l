%{
char ch;
%}

%%
[a-zA-A]+ {printf("%s is word\n",yytext);
return 1;}
[0-9]+ {printf("%s is a number\n",yytext);
return 1;}
.* {printf("%s is neither word nor number\n",yytext);
return 1;}
%%

int main()
{
do{
printf("Enter a text:");
yylex();
printf("Do you want to enter again?");
scanf("%c",&ch);
}while(ch=='y');
}

int yywrap()
{
return 1;
}