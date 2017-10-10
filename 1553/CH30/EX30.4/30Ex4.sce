//Chapter 30 Ex4
clc;
clear;
close;

S={'B','I','H','A','R'};
sizeS=size(S,"c"); 
reqLetters=sizeS; //since all the letters are required
noWords=factorial(sizeS)/factorial(sizeS-reqLetters);
mprintf("The required number of words are %.0f",noWords);
