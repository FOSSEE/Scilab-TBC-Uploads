//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 33
//Solved Problem 1
clear;
clc;

//Given Data

wattage=100;//wattage in watts
voltage=220;//voltage in volts

//Solution

I=wattage/voltage;//current in amperes

printf("I=%.3f Amp.",I);//Displaying upto 3 places of decimal
//Error due to decimal approximations
