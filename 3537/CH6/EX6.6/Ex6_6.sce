//Example 6_6
clc();
clear;
//To calculate the ratio of stimulated emission rate to spontaneous emission
c=3*10^8  //units in met/sec
lamda=0.5*10^-9
v=(c/lamda)*10^-3   //units in hz
h=6.626*10^-34  //units in J S
kb=1.381*10^-23  //units in J/K
t=1000
b21_a21=1/(exp((h*v)/(kb*t))-1)
printf("The ratio of Simulated emission to spontaneous emission B21/A21=")
disp(b21_a21)
