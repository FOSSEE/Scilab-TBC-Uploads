// Chapter 9
// determine Output frequency
// Page.No-333
// Example9_9
//Figure 9.37
// Given
clear;clc;
Vp=6;          //in V
R1=4000;            //in Ohm
C=330*10^-12;            //in Farad
C2=270*10^-12;            //in Farad
fo=0.3/(R1*C);
printf("\n Free runing  frequency  = %.0f Hz\n",fo); // Result
fl=8*fo/Vp;
printf("\n Lock Range  = %.0f Hz\n",fl); // Result
fc=sqrt(2*%pi*fl/(3600*C2))/(2*%pi);
printf("\n Capture Range  = %.0f Hz\n",fc); // Result
