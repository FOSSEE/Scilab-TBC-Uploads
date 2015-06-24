//Chapter5
//Page.No-172, Figure.No-5.5
//Example_5_2
//Gain equation and break frequencies
//Given:
clear;clc;
phase=-157.5; // Phase shift at about 3 MHz
f=3*10^6;
disp("Gain equation is Aol(f)=A/((1+(f/fo1)*j)*(1+(f/fo2)*j)),where fo1-first break frequency and fo2-second break frequency") // From the figure
fo1=6;
printf("\n First break frequency fo1 is = %.f Hz \n",fo1) // From the graph
k=-atand(f/fo1)-phase;
fo2=f/tand(k);
printf("\n Second break frequency fo2 is = %.1f Hz \n",fo2) // Result