clear; clc;close;

vgs=1.2;
vt=0.4;
ecln=0.6;
eclp=2.4;
vdsat1=((vgs-vt)*ecln)/(vgs-vt+ecln);
vdsat2=((vgs-vt)*eclp)/(vgs-vt+eclp);
ratio=(vgs-vt+eclp)/(vgs-vt+ecln);
disp(vdsat1,'for NMOS(in volts)');
disp(vdsat2,'for PMOS(in volts)');
disp(ratio,'saturation current ratio nmos to pmos');
