//example 15.6
clc;
clear;
//s= input('Enter the clk freqency in kHz : ');
//f=input('Enter the frequency of the unknown input in Hz :');
s=100;// taking the inputs 
f=200;
g=1000000/f;  // making neccesary calculations 
c=g*s/1000;
c=round(c);
p=c*1000/s;
disp('Assuming that the conter and the display are initially at 00000');//displaying results 
printf('Enable gate time in micro secnds will be : %d\n',g);
printf('During the gate time the counter will be advced by (number of counts ) %d \n',c);
printf('The time period of the unknown input in micro-seconds is : %d',p);
