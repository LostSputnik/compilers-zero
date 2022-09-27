%option noyywrap


%{
#include "LPT1_1703004_Q2b.tab.h"   
%}


delim [ \t]
delim2 [ \n]
ws ({delim}|delim2)+
roll [0][0][1-9]|[0][1-9][0-9]|[1][0-7][0-9]|[1][8][0]
letterUpper [A-Z]
letterLower [a-z]
letter [A-Za-z]
wordLower {letterLower}+
wordUpper {letterUpper}+
word {letter}+
wordFixed {letter}{4}
wordUpperFixed {letterUpper}{4}
wordLowerFixed {letterLower}{4}
digit [0-9]
number {digit}+
uniof "University of "
university {uniof}{letterUpper}{letterLower}+
series [1][6-9]|[2][0]
department [0][0-9]|[1][0]
ruetroll {series}{department}{roll}
verb "LOVE"|"LIKE"|"HATE"
i [I]
mysentnc {i}{delim}+{verb}{delim}+{word}


%%
{mysentnc} {return(SENTENCE);}
{ws} { }
%%