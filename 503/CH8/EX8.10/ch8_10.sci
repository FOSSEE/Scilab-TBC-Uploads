//to calculate armature resistance, sync reactance, full load stray load loss, Rac/Rdc,various categories of losses at full load,full load eff

clc;
r=60*10^3;
Psc=3950;
Isc=108;
Raeff=Psc/(3*Isc^2);disp(Raeff,'effective armature resistance(ohm)');
V=400;
Ifoc=2.85;
Ifsc=1.21;
I_SC=Isc*Ifoc/Ifsc;
Zs=(V/sqrt(3))/I_SC;
Xs=sqrt(Zs^2-Raeff^2);disp(Xs,'sync reactance(ohm)');

t1=25;
t2=75;
Rdc=0.075;
Radc=Rdc*((273+t2)/(273+t1));
Iarated=r/(sqrt(3)*V);
Pscc=Psc*(Iarated/Isc)^2;
P=3*Iarated^2*Radc;disp(P,'armature loss(W)');
loss=Pscc-P;disp(loss,'loss(W)');

a=Raeff/Radc;disp(a,'Rac/Rdc');

Pwf=900;disp(Pwf,'windage and friction loss(W)');
tloss=2440;
closs=tloss-Pwf;disp(closs,'core loss(W)');
If=3.1;
Rf=110;
Pcu=If^2*Rf;disp(Pcu,'field cu loss(W)');
disp(loss,'stray load loss(W)');
b=loss+Pcu+closs+Pwf+P;
disp(b,'total loss(W)');

pf=0.8;
op=r*pf;
ip=op+b;
eff=op/ip;
disp(eff,'efficiency');