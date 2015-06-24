// Chapter 9
// determine Output frequency
// Page.No-344
// Example_9_12
//Figure 9.47
// Given
clear;clc;
R=110000;            //in Ohm
C=0.1*10^-6;            //in Farad
//
disp("When C=0.1microF")

fomin=0.15/(R*C);
printf("\n For low range with lowest   frequency  = %.1f Hz\n",fomin); // Result
//
R1=10000;            //in Ohm
fomax=0.15/(R1*C);
printf("\n For low range with highest  frequency  = %.1f Hz\n",fomax); // Result
//
disp("When C=0.01microF")
R=110000;            //in Ohm
C=0.01*10^-6;            //in Farad
fomin=0.15/(R*C);
printf("\n For low range with lowest   frequency  = %.1f Hz\n",fomin); // Result
//
R1=10000;            //in Ohm
fomax=0.15/(R1*C);
printf("\n For low range with highest  frequency  = %.1f Hz\n",fomax); // Result
//
disp("When C=0.001microF")
R=110000;            //in Ohm
C=0.001*10^-6;            //in Farad
fomin=0.15/(R*C);
printf("\n For low range with lowest   frequency  = %.1f Hz\n",fomin); // Result
//
R1=10000;            //in Ohm
fomax=0.15/(R1*C);
printf("\n For low range with highest  frequency  = %.1f Hz\n",fomax); // Result
