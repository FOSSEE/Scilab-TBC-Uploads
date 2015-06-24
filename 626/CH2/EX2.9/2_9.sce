clear;
clc;
close;
disp("Example2.9")
d=0.2 //diameter in meters.
l=0.2 //length in meters.
Cf=0.005 //average wall friction coefficient.
M1=0.24 //inlet mach no.
gm=1.4 //gamma.
//From FANNO tbale
L1cr=(9.3866*d/2)/(4*Cf);
L2cr=L1cr-l;
//from FANNO table
M2=0.3;
x=2.4956;
y=2.0351;
a=4.5383;
b=3.6191;
i1=2.043;
i2=1.698;
//% total pressure drop due to friction:
dpt=(x-y)/(x)*100;
//static pressur drop:
dps=(a-b)/a*100;
//Loss pf fluid:
lf=(i2-i1);
disp(L1cr,"(a)The choking length of duct in m:")
disp(M2,"(b)The exit Mach no.:")
disp(dpt,"(c)% total pressure loss:")
disp(dps,"(d)The static pressure drop in %:")
disp(lf,"(e)Loss of impulse due to friction(I* times):")
