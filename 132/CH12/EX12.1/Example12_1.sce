//Example 12.1
//Program to Calculate the Gain of a Negative Feedback Amplifier with
//Given Specifications
clear;
clc ;
close ;
//Given Circuit Data
A=100; //Internal Gain
B=1/10; //Feedback Factor
//Calculation
Af=A/(1+A*B);
//Displaying The Results in Command Window
printf("\n\t The Value of the Gain of Feedback Amplifier is, Af = %f .",Af);