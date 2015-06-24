//calculate excitation emf

clc;
V=3300;
Vt=V/sqrt(3);
pf=1;
phi=acosd(pf);
P=1500*1000;
Ia=P/(sqrt(3)*V*pf);
Xq=2.88;
Xd=4.01;
w=atand((Vt*0-Ia*Xq)/Vt);
dl=phi-w;
Id=Ia*sind(w);
Iq=Ia*cosd(w);
Ef=Vt*cosd(dl)-Id*Xd;
disp(Ef*sqrt(3),'excitation emf(line)(V)');