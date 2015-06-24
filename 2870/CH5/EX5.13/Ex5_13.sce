clc;clear;
//Example 5.13

//given data
V=6/1000;//in m^3
Pgage=75;
Patm=100;
m1=1;
Qind=0.5;//d stands for .
t=30*60;//in s

//calculation
Pabs=Pgage+Patm;
//from Table A-5, ths saturation temp 
T=116.04;
disp(T,'the temperature at which cooking takes plac in C');
//mass balance me=(m1-m2)cv
//energy balance Qin - mehe = (m2u2 - m1u1)cv
Qin=Qind*t;
//from Table A-5
he=2700.2;
vf=0.001;
vg=1.004;
uf=486.82;
ufg=2037.7;
v1=V/m1;
x1=(v1-vf)/(vg-vf);
u1=uf+x1*ufg;
U=m1*u1;
//Qin = (m1 - V/v2)*he + (V/v2*u2 - m1*u1)
//v2=vf + x2*(vg-vf)
//u2=uf +  x2*ufg
//combining these equations we get
//solved using EES
x2=0.009;
v2=vf + x2*(vg-vf);
m2=V/v2;
disp(m2,'amount of water left in kg')
