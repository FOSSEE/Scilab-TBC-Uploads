//Calculate voltage gain and input resistance
clear;
clc;
//soltion

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given
R1=75*10^3;//ohm
R2=7.5*10^3;//ohm
Rc=4.7*10^3;//ohm
Re=1.2*10^3;//ohm
Rl=12*10^3;//ohm
B=150;
ri=2*10^3;//ohm
Vcc=15;//V
Vb=Vcc*R2/(R1+R2);
Ve=Vb;        //since Vbe=0
Ie=Ve/Re;
Ic=Ie;
Icsat=Vcc/(Rc+Re);
// Ic < Icsat therefore transistor is in active mode
Vce=Vcc-Ic*(Rc+Re);
printf("The Q point of DC analysis= (%.1f V, %.3f mA)\n",Vce,Ic*1000);

Rac=prll(Rc,Rl);
Av=-B*Rac/ri;
printf("The voltage gain = %.1f\n",Av);
Ri_=prll(ri,R2);
printf("The input resistance= %.2f kΩ\n",Ri_/1000);
