clc;
mC=1;
mO=3;
mN=(3*79/21);
Tar=mC+mO+mN;

p1=1.013*10^5;
R=8.3145*10^3;
T=338;
V=Tar*R*T/p1;

Vr=V/[(2*12)+6+16];
disp(Vr,"Volume of reactants per kilogram of fuel:");

//part II
mCO2=2;
mH2O=3;
mN2=(3*79/21);
Tap=mCO2+mH2O+mN2;

T=393;
p=10^5;

V=Tap*R*T/p1;
Vr=V/[(2*12)+6+16];

disp(Vr,"Volume of products per kg of fuel is:");
