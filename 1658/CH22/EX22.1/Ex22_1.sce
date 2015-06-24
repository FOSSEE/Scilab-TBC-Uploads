clc;
//e.g 22.1
ID=5*10**-3;
VDD=10;
RD=1*10**3;
RS=500;
VS=ID*RS;
disp('V',VS*1,"VS=");
VD=VDD-ID*RD;
disp('V',VD*1,"VD=");
VDS=VD-VS;
disp('V',VDS*1,"VDS=");
VGS=-VS;
disp('V',VGS*1,"VGS=");
