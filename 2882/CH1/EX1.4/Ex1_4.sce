//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 12
clear;
clc;

//Given Data

area=1;//meter squares
d=0.25;//distance between plates in centimeters
e=8.85D-12;//permittivity of air

//Solution

d=d*10^-2;//converting distance into meters
C=e*area/d;//Capacitance in Farads
C=C*10^12;//Coverting capacitance to pF from F
printf("C= %d pF\n",C);
printf("The capacitor can thus store a charge of %d*10^-12 C with 1 Volt.",C);
