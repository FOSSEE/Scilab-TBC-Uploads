//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 131
clear;
clc;

//Given Data

Bdc=175;//value of dc CE current gain
IB=40D-6;//base current in amperes

//Solution

IC=IB*Bdc*1000;//collector current in milli-amperes
Adc=Bdc/(Bdc+1);//value of dc CB current gain

printf("The value of IC = %d mA and αdc = %.4f",IC,Adc);

//Error in decimal places due to approximations in textbook
