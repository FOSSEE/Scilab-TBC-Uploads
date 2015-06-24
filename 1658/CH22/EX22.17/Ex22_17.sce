clc;
//e.g 22.17
vin=2*10**-3;
gm=5500*10**-6;
R1=1*10**6;
R2=1*10**6;
RS=5000;
RL=2000;
(1/gm);
AV=RS/(RS+(1/gm));
disp(AV);
Ri=(R1*R2)/(R1+R2);
disp('Mohm',Ri*10**-6,"Ri=");
Ro=(RS/gm)/(RS+1/gm);
disp('ohm',Ro*1,"Ro=");
Vo=(RL/(RL+Ro))*(AV*vin);
disp('mV',Vo*10**3,"Vo=");
