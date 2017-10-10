clc; clear; close;

Cl=100*(10^(-15));//in farad
T=200*(10^(-12));//in seconds
Reqn=12500;//in_ohms for_nmos_devices
r=(0.7*Reqn*Cl)/T;
disp(r,'W/L=');
Wn=r*100;
disp(Wn,'Wn for both nmos devices(in nanometer)=');
Wp=4*Wn;
disp(Wp,'Wp for both pmos devices(in nanometers)=' );
//answers vary due to round off error
