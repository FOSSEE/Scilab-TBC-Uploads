//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 131
clear;
clc;

//Given Data

IC=7.5D-3;//collector current in amperes
Adc=0.9914;//value of dc CB current gain

//Solution

IE=IC/Adc;//emitter current in amperes
IB=IE-IC;//base current in amperes
IB=IB*10^6;//converting base current to mICro-amperes
Bdc=Adc/(1-Adc);//value of dc CE current gain

printf("The value of IB = %d μA and βdc = %.2f",IB,Bdc);

//Error in decimal places due to approximations in textbook
