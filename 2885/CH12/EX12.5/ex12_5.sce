//Determine the series and parallel resonant frequencies
clear;
clc;
//soltion

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given

L=3;//H
Cm=10*10^-12;//F
Cs=0.05*10^-12;//F
fs=1/(2*%pi*sqrt(L*Cs));
printf("The series resonant frequency =%.0f kHz\n",fs/1000);

Cp=prll(Cm,Cs);
fp=1/(2*%pi*sqrt(L*Cp));
printf("The parallel resonant frequency =%.0f kHz",fp/1000);
