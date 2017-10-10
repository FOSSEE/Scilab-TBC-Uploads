//Chapter 30 Ex 8

clc;
clear;
close;
total=15; chosen=11;
noways=factorial(total)/(factorial(chosen)*factorial(total-chosen));
mprintf("The number of ways in which a cricket 11 be chosen out of a batch of 15 players is %d",noways);
