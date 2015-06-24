//Calculate the input and output impedance and voltage gain
clear;
clc;
//soltion
//FUNCTIONS

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

hie=1.1*10^3;//ohm      = rin
hfe=120;//    = B

//the values of Rac2, Zi, Zo are as per diagram
Rac2=prll(3.3*10^3,2.2*10^3);
Rac1=prll(6.8*10^3,prll(56*10^3,prll(5.6*10^3,1.1*10^3)));
Zi=prll(5.6*10^3,prll(56*10^3,1.1*10^3));
Zo=prll(3.3*10^3,2.2*10^3);

printf("Input Resistance = %.3f kΩ\nOutput Resistance = %.2f kΩ\n",Zi/1000,Zo/1000);

Am2=-hfe*Rac2/(hie);
Am1=-hfe*Rac1/(hie);
Am=Am1*Am2;
Am=20*log10(Am);
printf("The Overall Voltage gain is %.2f dB",Am);
