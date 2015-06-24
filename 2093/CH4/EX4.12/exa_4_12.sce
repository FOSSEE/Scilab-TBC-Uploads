// Exa 4.12
clc;
clear;
close;
// Given data 
I=0.8;// in mA
I=I*10^-3;//in A
V_A= 100;// in V
Bita=160;
VT=25;// in mV
VT= VT*10^-3;//in V
gm= (I/2)/VT;// in A/V
Gm= gm;// Short circuit trnsconductance in mA/V
disp(Gm*10^3,"The value of Gm in mA/V")
ro2= V_A/(I/2);// in ohm
ro4= ro2;// in ohm
Ro= ro2*ro4/(ro2+ro4);// in ohm
disp(Ro*10^-3,"The value of Ro in kΩ is :")
Ad= Gm*Ro;// in V/V
disp(Ad,"Value  of Ad in V/V is :")
r_pi= Bita/gm;//in Ω
Rid= 2*r_pi;// in Ω
disp(Rid*10^-3,"The value of Rid in kΩ is :")

