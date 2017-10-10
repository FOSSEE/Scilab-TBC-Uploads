clear;
clc;
phi=-36.87;
v=33;
l=1000;
pf=0.8;
r=20;
xl=50;
i=(l/(sqrt(3)*v*pf));

Vr=v/sqrt(3);
Ir=i*complex(.8,-.6);

Vs=(Vr+((complex(r,xl)*Ir)/1000))*sqrt(3);
reg=(((sqrt((real(Vs)^2)+(imag(Vs)^2)))-v)/v)*100;
loss=((real(Ir)^2)+(imag(Ir)^2))*r;
Ps=(l*1000)+loss;
eff=((l*1000)/Ps)*100;
mprintf("sending end voltage=%f+j%f V,  sending end real power=%f W, efficiency=%f percent, regulation=%f percent and loss=%f W",real(Vs),imag(Vs),Ps,eff,reg,loss);




