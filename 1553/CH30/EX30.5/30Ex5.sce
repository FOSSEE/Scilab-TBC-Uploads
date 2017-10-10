//Chapter 30 Ex5
clc;
clear;
close;

S={'D','A','U','G','H','T','E','R'};
sizeS=size(S,"c"); 
n=6; //since there are 3 vowels, they are considered as 1 letter
reqLetters=n; //since all the letters are required
noLetters=factorial(n)/factorial(n-reqLetters);
reqVowels=3; //since vowels are required to be together
noWays=factorial(reqVowels); //no of ways in which vowels can be arranged together
mprintf("The required number of words are %.0f",noLetters*noWays);

