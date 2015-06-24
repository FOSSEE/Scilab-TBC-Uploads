clc;
//e.g 22.20
gmo=5*10^-3;
RD=1*10**3;
Rs=200;
ID=5*10**-3;
Ri1=(Rs/gmo)/(Rs+1/gmo);
disp('ohm',Ri1*1,"Ri1=");
Vs=ID*Rs;
disp('V',Vs*1,"Vs=");
VGS=Vs;
IDSS=2*ID;
VGSo=(-2*IDSS)/ID;
gm=gmo*(1-VGS/-VGSo);
Av=gm*RD;
disp(Av);
