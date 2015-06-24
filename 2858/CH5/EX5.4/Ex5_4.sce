//example 5.4
clc; funcprot(0);
zbar=5;
mus=0.3;
F1=0.641;
F2=0.031;
z1=2;
z2=1;
z3=2;
Es1=10000;
Es2=8000;
Es3=12000;
qo=150;
//from table
If=0.709;
Es=(Es1*z1+Es2*z2+Es3*z3)/zbar;
disp(Es,"modulus of elasticity in kN/m^2");
Is=F1+(2-mus)/(1-mus)*F2;
Sc=qo*(1/Es-mus^2/Es)*Is*If*2;
Scrigid=0.93*Sc;
disp(Scrigid*1000,"settelement in mm");

