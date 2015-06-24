//Calculate voltage and current gain and input and output resistance
clear;
clc;
//soltion

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given

//DC analysis
Vcc=12;//V
Rb=200*10^3;//ohm
Rc=1*10^3;//ohm
B=100;// beta
Ib=Vcc/Rb;
Ic=B*Ib;
Icsat=Vcc/Rc;
Vce=Vcc-Ic*Rc;
printf("The Q point of DC analysis= (%.0f V, %.0f mA)\n",Vce,Ic*1000);

//AC analysis
Rl=1*10^3;//ohm
hfe=B;
hie=2*10^3;//ohm
hoe_1=40*10^3;//ohm      // 1/hoe
Rac=prll(Rc,Rl);
Av=-hfe*Rac/hie;
printf("The voltage gain = %.0f\n",Av);

//Siince (1/hoe) > Rac therefore entire current will flows through Rac
Io=-100*Ib;
Ac=Io/Ib;
printf("The current gain = %.0f\n",Ac);

Ri=prll(Rb,hie);
Ro=prll(Rl,prll(Rc,hoe_1));
printf("The input resistance= %.0f kΩ\n",Ri/1000);
printf("The output resistance= %.1f kΩ",Ro/1000);

//In book the voltage gain is 25 due to skipping of '-' in printing
