// Calculating  the maximum voltage sensitivity of the bridge
clc;
P=(0.1/0.2)*10^-3;
R=1000;
eim=2*(P*R)^0.5;
dth=0.1;
dR=(4.5/100)*dth*R;
eom=(dR/(4*R))*eim;
Sem=eom/dth;
disp(Sem,'maximum voltage sensitivity of the bridge (V)=')