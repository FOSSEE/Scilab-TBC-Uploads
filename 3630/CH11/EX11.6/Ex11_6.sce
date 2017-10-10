clc;
PP=5.29; //Vpp(Volt peak to peak))
RL=75; //Ohm
PL=PP^2/(8*RL);//Watt
Ps=1.6; //Watt
N=(PL/Ps)*100;
disp('%',N,"N=");//The answers vary due to round off error

