%{
#include <stdio.h>
int count = 0;
%}

%%

[Aa][a-zA-Z]*	{ count++; } //counts only words
[Aa].*	{ count++; } //counts identifiers etc
.|\n	;

%%

int main() {
printf("Enter a paragraph: ");
yylex();
printf("The number of words starting with A or a is: %d\n", count);
return 0;
}

int yywrap() {
return 1;
}
