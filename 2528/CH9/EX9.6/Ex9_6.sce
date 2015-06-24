// Chapter 9
// 2kHZ Square Wave generator
// Page.No-323
// Example9_6
//Figure 9.23
// Given
clear;clc;
R1=10000;               //in Ohm
R2=R1/0.859;                //in Ohm
fo=2000;            //in Hz

printf("\n R2 is %.0f Ohm\n",R2); // Result
C=1/(2*R1*fo);
printf("\n C is %.9f F\n",C); // Result
