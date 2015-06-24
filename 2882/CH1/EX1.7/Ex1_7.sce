//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 29
clear;
clc;

//Given Data
//Fig 1.33
vi=6D-3;//input volatage in volts
Rin=1200;//input resistance in ohms
Ai=100;//current gain
Ro=25000;//output resistance in ohms
Rl=1000;//load impedance

//Solution

is=vi/Rin;//Input current
i2=Ai*is;//Output circuit current source value
iL=i2*(Ro/(Ro+Rl));//Current divider to  find load current
Vout=iL*Rl;

printf("The output voltage is Vout=%.2f V",Vout);//Displaying upto 2 places of decimal
