//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 204
clear;
clc;

//Given Data

B=190;//current gain of single transistor

//Solution

Bac=B^2;//current gain of superbeta transistor if B is the gain of each of the employed transistor
printf("Bac = %d",Bac);
