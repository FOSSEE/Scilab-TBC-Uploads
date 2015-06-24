//Example 2_15
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
alfa=30;//degree
IL=10;//A

//Solution :
Vm=Vs*sqrt(2);//V
Vdc=2*Vm/%pi*cosd(alfa)//V
disp(Vdc,"(a) dc output voltage(V)");
Irms=IL;//A
disp(Irms,"(b) Irms in A");
Is1=2*sqrt(2)/%pi*IL;//A
disp(Is1,"(c) Fundamental component of input current in A");
DF=cosd(-alfa);//unitless
disp(DF,"(d) Displacement fator");
pf_in=Is1/IL*DF;//lagging
disp(pf_in,"(e) Input power fator(lagging)");
HF=sqrt((IL/Is1)^2-1);//unitless
disp(HF,"(f) Harmonic factor");
Vrms=Vs;//V
FF=Vrms/Vdc;//form fator
RF=sqrt(FF^2-1);//ripple fator
disp(RF,"(g) Ripple factor");
