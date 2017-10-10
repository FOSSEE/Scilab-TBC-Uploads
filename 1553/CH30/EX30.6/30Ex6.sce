//Chapter 30 Ex6
clc;
clear;
close;

S={'E','X','T','R','A'};
sizeS=size(S,"c"); 
n=4; //since there are 3 vowels, they are considered as 1 letter
reqLetters=n; //since all the letters are required
noLetters=factorial(n)/factorial(n-reqLetters);
reqVowels=2; //since vowels are required to be together
noWays=factorial(reqVowels); //no of ways in which vowels can be arranged together
noWords=factorial(n)/factorial(n-reqLetters);
noWordsAll=factorial(sizeS); //no of words using all letters
mprintf("The required number of words having vowel together are %.0f\n The no of words having each vowel never together are %.0f",noWords*noWays,noWordsAll-noWords*noWays);
