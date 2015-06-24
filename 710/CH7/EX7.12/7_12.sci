clc();
clear;
//To determine the magnetic field
m=9.1*10^-31;                  //mass of electron
q=1.6*10^-19;
t=8*10^-9;                     //time in ns
B=(2*%pi*m*500)/(q*t)          //magnetic field
printf("The magnetic field is %f T",B);