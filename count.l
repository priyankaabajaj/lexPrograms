%{
int lc=0,wc=0,cc=0;
%}

%%
[\n] {lc++;cc+=yyleng;}
[^\t\n ]+ {wc++;cc+=yyleng;}
[\t ] {cc+=yyleng;}
%%

int main()
{
printf("Enter input:");
yylex();
printf("Number of lines:%d\n",lc);
printf("Number of words:%d\n",wc);
printf("Number of characters:%d\n",cc);
}

int yywrap()
{
return 1;
}
