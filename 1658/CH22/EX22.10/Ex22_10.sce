clc;
//e.g 22.10
gm=2*10**-3;
rd=40*10**3;
RD=20*10**3;
RG=100*10**6;
rL=(RD*rd)/(RD+rd);
Av=-gm*rL;
disp(Av);
Ri=RG;
disp('Mohm',Ri*10**-6,"Ri=");
Ro=rL;
disp('Kohm',Ro*10**-3,"Ro=");
