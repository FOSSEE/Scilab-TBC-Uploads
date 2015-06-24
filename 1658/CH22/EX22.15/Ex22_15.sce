clc;
// e.g 22.15
RD=1.5*10**3;
RS=750;
RG=1*10**6;
IDSS=10*10**-3;
VP=-3.5;
IDQ=2.3*10**-3;
VGSQ=-1.8;
gmo=-2*IDSS/VP;
gm=gmo*(1-(VGSQ/VP));
rL=RD;
AV=-(gm*rL)/(1+gm*RS);
disp(AV);
AV=-gm*rL;
disp(AV);
