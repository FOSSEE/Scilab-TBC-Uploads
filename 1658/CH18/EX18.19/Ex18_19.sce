
clc;
Vcc=20;
RC=1*10**3;
RE=5*10**3;
R1=10*10**3;
R2=10*10**3;
B=462;
VBE=0.7;
VB=Vcc*R2/(R1+R2);
disp('V',VB*1,"VB=");
VE=VB-VBE;
IE=VE/RE;
disp('mA',IE*10**3,"IE=");
IC=IE;
VCE=Vcc-IC*RC;
disp('V',VCE*1,"VCE=");
