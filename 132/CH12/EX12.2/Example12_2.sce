//Example 12.2
//Program to Calculate the A(Internal Gain) and Beeta(Feedback Gain) of //a Negative Feedback Amplifier with given Specifications
clear;
clc ;
close ;
//Given Circuit Data
Af=100; //Voltage Gain
Vin=50*10^(-3); //V , Input Signal without Feedaback Gain
Vi=0.6; //V , Input Signal with Feedaback Gain
//Calculation
Vo=Af*Vi;
A=Vo/Vin;
B=((A/Af)-1)/A;
//Displaying The Results in Command Window
printf("\n\t The Value of the Internal Gain A is, A = %f .",A);
printf("\n\t The Value of the Feedback Gain B is, B = %f percent .",B*100);