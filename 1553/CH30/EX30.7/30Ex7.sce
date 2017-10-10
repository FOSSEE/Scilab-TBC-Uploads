//Chapter 30 Ex7
clc;
clear;
close;

S={'D','I','R','E','C','T','O','R'};
sizeS=size(S,"c"); 
n=6;
r=2; //since R occurs twice
noWays=factorial(n)/factorial(r);
Vowels=3;
noWaysVowels=factorial(Vowels); //no of ways in which vowels can be arranged
reqWays=noWaysVowels*noWays;
mprintf("The required number of ways are %.0f",reqWays);
