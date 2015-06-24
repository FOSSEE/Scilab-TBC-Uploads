//Solve previous example using hybrid pie model
clear;
clc;
//soltion
function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given

Vcc=12;//V
Rb=200*10^3;//ohm
Rc=1*10^3;//ohm
Rl=1*10^3;//ohm
B=100;// beta
hie=2*10^3;//ohm
hoe_1=40*10^3;//ohm      // 1/hoe

Ib=Vcc/Rb;
Ic=B*Ib;
Rac=prll(Rc,Rl);
gm=Ic/(25*10^-3);
rpi=B/gm;
ri=hie;
rb=ri-rpi;
ro=hoe_1;
Vi=poly(0,"Vi");      //let the input be Vi
Vpi=Vi*rpi/(rpi+rb);
Vo=-gm*Vpi*Rac;    //output voltage
Av=Vo/Vi;
printf("The voltage gain ");
disp(Av);
//In book voltage gain is -24.96 due to appraoximation
