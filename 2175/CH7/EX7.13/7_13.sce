clc;
h0=3169540
nR=1+7.5;
nP=6+3;
R=8.3145;
T=298;
U0=-(h0)-{(nP-nR)*R*T};
c=(6*12)+(6*1);
u0=U0/c
disp(u0,"specific internal energy of reaction for the combustion of benzene vapour is:")
