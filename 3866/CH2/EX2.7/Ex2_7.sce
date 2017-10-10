clear; close; clc;
//in standard units
vsat=8*(10^4);
tox=22*(10^(-10));
vgs=1.2;
vt=0.4;
cl=100*(10^(-9));
eo=8.85*(10^(-12));
cox=(4*eo)/tox;
enln=6*(10^6)*cl;
eplp=24*(10^6)*cl;
ids1=(vsat*cox*((vgs-vt)^2))/(vgs-vt+enln);
ids2=(vsat*cox*((vgs-vt)^2))/(vgs-vt+eplp);
disp(ids1,'saturation current of NMOS(in ampere/metre)');//answers vary due to round off error
disp(ids2,'saturation current of PMOS(in ampere/metre)');//answers vary due to round off error
