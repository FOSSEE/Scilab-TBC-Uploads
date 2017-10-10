clear; clc; close;

vgs=1.8;
vt=0.5;
cl=200*(10^(-9));
enln=6*(10^6)*cl;
eplp=24*(10^6)*cl;
vdsat1=((vgs-vt)*enln)/(vgs-vt+enln);
vdsat2=((vgs-vt)*eplp)/(vgs-vt+eplp);
disp(vdsat1,'Vdsat for NMOS(in volts)');
disp(vdsat2,'Vdsat for PMOS(in volts)');
