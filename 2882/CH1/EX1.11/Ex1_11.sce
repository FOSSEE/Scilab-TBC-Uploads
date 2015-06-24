//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 33
//Solved Problem 4
clear;
clc;

//Given Data

R=10;//resistance in ohms
P=4;//power in watts

//Solution

I=sqrt(P/R);//current in amperes

printf("Maximum safe current is I=%.3f Amperes.",I);//Displaying upto 3 places of decimal
