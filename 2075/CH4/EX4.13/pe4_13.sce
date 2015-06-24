//example 4.13
clc; funcprot(0);
// Initialization of Variable
R=8//resistance
V=5//voltage
Tm=150//temperature
Ta=50//temperature
Qa=107;
Qc=37;
Ps=299;
//calculation
Vd=V/2;
Vm=V-1;
Vp=Vm-Vd;
Vr=Vp/2^.5;
Pl=1000*Vr^2/R;
disp(Pl,"power dissipated in mW:")
Pl=140;
Pic=Ps-Pl;
Q=(Tm-Ta)/Pic;
disp(Q*1000,"thermal resistance degree C/W")
clear()
