//Caption:Determine:(a)VSWR; (b)Position of 1st Vmin & Vmax; (c)Vmin & Vmax; (d)Impedance at Vmin & Vmax.
//Exa: 3.8
clc;
clear;
close;
Z_o=50;//in ohms
Z_l=100;//in ohms
f=300*10^3;//in Hz
P_l=50*10^-3;//in watts
wl=(3*10^8)/f;
p=(Z_l-Z_o)/(Z_l+Z_o);
S=(1+abs(p))/(1-abs(p));
disp(S,"VSWR =");
//Since real Zl > Zo , 
pos=wl/4;
disp("First Vmax is located --->at the load ");
disp("First Vmin is located at --->(wavelength/4)= ");
disp(pos,"(in meters)");
V_max=(P_l*Z_l)^0.5;
V_min=V_max/S;
disp(V_max,"Vmax (in volts) =");
disp(V_min,"Vmin (in volts) =");
disp(Z_o/S,"Zin at Vmin (in ohms) =:");
disp(Z_o*S,"Zin at Vmax (in ohms) =");