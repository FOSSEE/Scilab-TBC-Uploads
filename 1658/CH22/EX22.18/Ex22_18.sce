clc;
//e.g 22.18
gm=2500*10**-6;
Ri=2000;
RD=10000;
AV=gm*RD;
disp(AV);
Ri1=(Ri/gm)/(Ri+1/gm);
disp('ohm',Ri1*1,"Ri1=");
