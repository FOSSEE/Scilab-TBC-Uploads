//to find resistance added to ckt

clc;
Rrot=.061;
R2=Rrot/2;
f=50;
P=12;
w_s=(120*f/P)*(2*%pi/60);
s=0.045;
w=(1-s)*w_s;
P=200*10^3;
T_fan=P/w;
I2=sqrt(T_fan*w_s*s/(3*R2));
E2=I2*R2/s;
n=450;
ww=2*%pi*n/60;
nn=500;
ss=(nn-n)/nn;
Tnew=T_fan*(ww/w)^2;
Rt=(3/w_s)*(E2*ss)^2/(ss*Tnew);
Rext=Rt-R2;disp(Rext,'external resistance(ohm)');