
clc;
C=1*10**-6;
Vi=6;
R=10*10**3;
Vo=-3;
t=8*10**-3;
tao=R*C;
disp('msec',tao*10**3,"tao=");
vf=6*(1-exp(-8/10));
disp('V',vf*1,"vf=");
output=vf-3.0;
disp('V',output*1,"output=");
