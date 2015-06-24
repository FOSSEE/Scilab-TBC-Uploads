//Example 2_16
clc;
clear;close;

//Given data: 
Vs=240;//V
f=50;//Hz
alfa=60;//degree
RL=10;//ohm

//Solution :
Vm=Vs*sqrt(2);//V
Vdc=Vm/%pi*(1+cosd(alfa))//V
disp(Vdc,"(a) average load voltage(V)");
I=Vdc/RL;//A
Is=I*sqrt(1-alfa/180);//A
Irms=Is;//A
disp(Irms,"(b) rms input current(A)");
Is1=2*sqrt(2)/%pi*I*cosd(alfa/2);//A
fi1=-alfa/2;//degree
DF=cosd(fi1);//unitless
pf_in=Is1/Is*DF;//lagging
disp(pf_in,"(c) Input power fator(lagging)");
Pavg=I^2*RL;//W
disp(Pavg,"(d) Average power dissipated(W)");
