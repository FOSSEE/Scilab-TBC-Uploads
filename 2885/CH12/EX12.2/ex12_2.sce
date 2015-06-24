//Calculate frequency of oscillations and feedback factor and voltage gain
clear;
clc;
//soltion

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given
C1=0.001*10^-6;//F
C2=0.01*10^-6;//F
L=15*10^-6;//H
C=prll(C1,C2);
fo=1/(2*%pi*sqrt(L*C));
printf("The frequency of oscillations= %.2f MHz\n",fo/10^6);
B=C1/C2;
Amin=1/B;
printf("The feedback factor of the circuit =%.1f \n",B);
printf("The circuit needs a minimum voltage gain of %.0f",Amin);
