
clc;
VCC=5;
RE=0.3*10**3;
IC=1*10**-3;
VCE=2.5;
B=100;
VBE=0.7;
ICO=0;
R2=10*10**3;
IE=IC;
RC=((VCC-VCE)/IC)-RE;
disp('ohm',RC*1,"RC=");
VE=IE*RE;
VB=VE+VBE;
R1=VCC*R2-R2;
disp('Kohm',R1*10**-3,"R1=");
