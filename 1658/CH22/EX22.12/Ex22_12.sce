clc;
//e.g 22.12
RD=100*10**3;
gm=1.6*10**-3;
rd=44*10**3;
Cgs=3*10**-12;
Cds=1*10**-12;
Cgd=2.8*10**-12;
rl=(RD*rd)/(RD+rd);
Av=-gm*rl;
disp(Av);
