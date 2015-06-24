clc;
//e.g 22.16
gm=8000*10**-6;
RS=10*10**3;
RG=100*10**6;
(1/gm);
AV=RS/(RS+(1/gm));
disp(AV);
Ri=RG;
Ro=1/gm;
disp('ohm',Ro*1,"Ro=");
