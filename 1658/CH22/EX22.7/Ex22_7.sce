clc;
//e.g 22.7
VDD=20;
RD=2.5*10**3;
RS=1.5*10**3;
R1=2*10**6;
R2=250*10**3;
ID=4*10**-3;
VG=(R2*VDD)/(R1+R2);
VS=ID*RS;
VGS=VG-VS;
disp('V',VGS*1,"VGS=");
VD=VDD-ID*RD;
VDS=VD-VS;
disp('V',VDS*1,"VDS=");
