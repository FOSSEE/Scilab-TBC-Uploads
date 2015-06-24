//Example 10.3(b)
//Program to Determine the Percentage Increase in Power because of Distortion
clear;
clc ;
close ;
P1=poly(0,"P1");
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
D=sqrt(D2^2+D3^2+D4^2);//Distortion Factor
P=(1+(D/100)^2)*P1;
Pi=((P-P1)/P1)*100;
//Displaying The Results in Command Window
disp(Pi,"The Percentage Increase in Power because of Distortion is, Pi (in percent)= ");