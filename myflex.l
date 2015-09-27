
%%
"<html>"	printf("html start tag: \t%s\n",yytext);
"</html>"	printf("html end tag: \t%s\n",yytext);
"<body>"	printf("body start tag: \t%s\n",yytext);
"</body>"	printf("body end tag: \t%s\n",yytext);
"<head>"	printf("head start tag: \t%s\n",yytext);
"</head>"	printf("head end tag: \t%s\n",yytext);
"<title>"	printf("title start tag: \t%s\n",yytext);
"</title>"	printf("html start tag: \t%s\n",yytext);
"<p>"		printf("paragraph start tag: \t%s\n",yytext);
"</p>"		printf("paragraph end tag: \t%s\n",yytext);
[a-zA-z0-9]+	printf("text: \t%s\n",yytext);
%%

int yywrap(void)
{
	return 1;
}

int main(int argc, char *arg[])
{
	yyin = fopen(arg[1],"r");
	yylex();
	fclose(yyin);
}