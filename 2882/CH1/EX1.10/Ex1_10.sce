//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 33
//Solved Problem 3
clear;
clc;

//Given Data

R=120;//resistance in ohms
P=1000;//power in watts

//Solution

I=sqrt(P/R);//current in amperes

printf("I=%.2f Amperes.",I);//Displaying upto 2 places of decimal
