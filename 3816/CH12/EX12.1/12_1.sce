clc;
clear;
w=200;
V=240;
f=50;
P=4;//no of poles
S=0.05;//slip
r1=11.4;
x1=14.5;
r2o=6.9;
x2o=7.2;
xmo=135;
Ls=32;//core and mechanical loss
S=0.05;
R1=((r2o)/S)+(x2o*%i);
R2=(xmo*%i);
M1=((R1*R2)/(R1+R2));
disp(M1,'The rotor impedance for forward circuit is:')
R3=((r2o)/(2-S));
R4=(x2o*%i);
M2=(R3*R4)/(R3+R4);
disp(M2,'The rotor impedance for backward circuit is:')
Z1=78.4;
M3=Z1+M1+M2;
disp(M3,'The total series input impedanceis:')
cos_theta=0.66;//power factor
disp(cos_theta,'The pf is:')
E1f=2*94;
E1b=2*7.6;
I2f=E1f/((r2o)/S);
I2b=E1b/8;
Mf=(I2f)^2*((r2o)/S);
Mb=(I2b)^2*((r2o)/(2-S));
disp(E1f,'Eif is')
disp(E1b,'E1b is')
disp(I2f,'I2f is')
disp(I2b,'I2b is')
disp(Mf,'Mf is')
disp(Mb,'Mb is')
M=Mf-Mb-Ls;//net torque
Ms=M*0.95;//shaft power
disp(M,'The net torque is:')
disp(Ms,'The shaft power is:')
Mi=V*2*cos_theta;//input power
disp(Mi,'The input power is :')
eff=Ms/Mi;
disp(eff,'The efficiency is :')
