//Example 10.3(a)
//Program to Determine the Second, Third & Fourth Harmonic Distortions 
clear;
clc ;
close ;
//Given Circuit Data
//io=15*sin(600*t)+1.5*sin(1200*t)+1.2*sin(1800*t)+0.5*sin(2400*t)
I1=15;
I2=1.5;
I3=1.2;
I4=0.5;
//Calculation
D2=(I2/I1)*100;
D3=(I3/I1)*100;
D4=(I4/I1)*100;
//Displaying The Results in Command Window
printf("\n\t The Second Harmonic Distortion is, D2 = %f percent .",D2);
printf("\n\t The Third  Harmonic Distortion is, D3 = %f percent .",D3);
printf("\n\t The Fourth Harmonic Distortion is, D4 = %f percent .",D4);