clc;
//e.g 22.9
gm=2.5*10**-3;
rd=500*10**3;
RD=10*10**3;
rL=(RD*rd)/(rd+RD);
disp('10^3 ohm',rL*10**-3,"rL=");
AV=-gm*rL;
disp(AV);
