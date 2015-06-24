//Example 14.1
//Program to Determine the Series Resistance to Convert given 
//d' Arsonval movement into a Voltmeter with the specified Range
clear;
clc ;
close ;
//Given Circuit Data
Rm=100; //Ohms
Is=100*10^(-6); //A
Vr=100; //V
//Calculation
Rtotal=Vr/Is;
Rs=Rtotal-Rm;
//Displaying The Results in Command Window
printf("\n\t The Series Resistance to Convert given dArsonval movement into a Voltmeter is, Rs = %f kOhms .",Rs/10^3);