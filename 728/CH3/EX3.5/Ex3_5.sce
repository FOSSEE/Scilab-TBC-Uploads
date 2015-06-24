//Caption:Calculate VSWR & reflection coefficient.
//Exa: 3.5
clc;
clear;
close;
Z_o=50;//in ohms
f=300*10^6;//in Hz
Z_l=50+%i*50;//in ohms
wl=(3*10^8)/f;//wavelength(in meters)
P=[(Z_l-Z_o)/(Z_l+Z_o)];
P_mag={(real(P)^2)+(imag(P)^2)}^0.5;
P_ang=atan(imag(P)/real(P))*180/%pi;//in degrees
S={1+P_mag}/{1-P_mag};
disp(P,"Reflection coefficient =");
disp(P_mag,"Magnitude of reflection coeffcient =");
disp(P_ang,"Angle (in degree) =");
disp(S,"VSWR =");