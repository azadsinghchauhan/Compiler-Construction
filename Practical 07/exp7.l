%{
#include <stdio.h>
%}

%%

.*COM\n    { printf("Line ends with COM...\n"); }
.*\n       { printf("Line does not end with COM...\n"); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Kaustubh Kachole 1098\n");
    printf("Enter line: ");
    yylex();
    return 0;
}
