//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 131
clear;
clc;

//Given Data

IB=40D-6;//base current in amperes
IC=4.25D-3;//collector current in amperes

//Solution

Bdc=IC/IB;//value of dc CE current gain
Adc=Bdc/(Bdc+1);//value of dc CB current gain

printf("The value of βdc = %.2f and αdc = %.4f",Bdc,Adc);

//Error in decimal places due to approximations in textbook
