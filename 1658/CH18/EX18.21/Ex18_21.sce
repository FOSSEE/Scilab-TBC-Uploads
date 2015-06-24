
clc;
VCC=12;
RC=1*10**3;
RE=100;
R1=25*10**3;
R2=5*10**3;
B=50;
VBE=0.6;
VTH=VCC*R2/(R1+R2);
RTH=R1*R2/(R1+R2);
IE50=(VTH-VBE)/(RE+RTH/B);
B=150;
IE150=(VTH-VBE)/(RE+RTH/B);
ICdiff=(IE150-IE50)/IE50;
disp('%',ICdiff*100,"ICdiff=")
