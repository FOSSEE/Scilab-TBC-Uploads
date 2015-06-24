// to campute cu loss in rotoe windings, input to the motor, efficiency

clc;
f_s=120/60;        //cycles/min
f=50;
s=f_s/f;
n_s=1000;
n=(1-s)*n_s;
w=n*2*%pi/60;
T=160;
P=T*w;
T_L=10;
P_m=(T+T_L)*w;
cu=P_m*(s/(1-s));    disp(cu,'rotor cu loss(W)');

P_sl=800;    //stator loss
P_in=P_m+cu+P_sl;    disp(P_in,'power i/p to motor(W)');

eff=P/P_in;
disp(eff*100,'efficiency(%)');