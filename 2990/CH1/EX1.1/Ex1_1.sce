
clc; funcprot(0);
// Initialization of Variable
T=273+25.0;//temperature in K
p=752.0;//pressure mm Hg
No=294.0e-6;
ns=1.000284;
D1=1438.254;//recorded distance in m
h=263.42-243.25;//height difference in m
R=6370e3;//radius of earth in m
//calculation
n=1+No*(273/T)*(p/760);
D=D1*ns/n;
cg=-h**2/2/D;
Hm=263.42/2+243.25/2;
D=D+cg;
ch=-D*Hm/R
EL=D+ch;
disp(EL,"equivalent length in m")
clear()
