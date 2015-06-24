//calculate excitation emf,max load motor supplies, torque angle

clc;
Xd=23.2;
Xq=14.5;
V=6600;
pf=.8;
phi=acosd(pf);
Vt=V/sqrt(3);
r=1500*1000;
Ia=r/(sqrt(3)*V)
w=atand((Vt*sind(-phi)-Ia*Xq)/(Vt*cosd(phi)));
dl=-phi-w;disp(dl,'torque angle');
Ef=Vt*cosd(dl)-Ia*sind(w)*Xd;
disp(Ef,'excitation emf(V)');

Pe=V^2*((Xd-Xq)/(2*Xd*Xq));disp(Pe,'load supplied(W)');