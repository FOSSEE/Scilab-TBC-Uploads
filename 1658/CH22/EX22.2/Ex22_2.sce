clc;
//e.g 22.2
RD=56*10**3;
RG=1*10**6;
IDSS=1.5*10**-3;
VP=-1.5;
VD=10;
VDD=20;
ID=VD/RD;
disp('mA',ID*10**3,"ID=");
//ID=IDSS*(1-(VGS/VP))**2
VGS=VP*(1-sqrt(ID/IDSS));
disp('V',VGS*1,"VGS=");
VS=VGS;
R1=(-VS/ID)-4*10**3;
disp('kohm',R1*10**-3,"R1=");
