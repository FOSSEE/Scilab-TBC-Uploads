//to find power angle,field current

clc;
j=sqrt(-1);
V=400;
Vt=V/sqrt(3);
pf=1;
Ia=50;
Xs=1.3;
Ef=Vt-j*Ia*Xs;
disp(-atand(imag(Ef)/real(Ef)),'power angle');

Pm=Vt*Ia*pf;
pff=.8;
Ia=Pm/(Vt*pff);
ang=acosd(pff);
Eff=sqrt((Vt*cosd(ang))^2+(Vt*sind(ang)+Ia*Xs)^2);
If=.9;
Iff=If*Eff/abs(Ef);
disp(Iff,'field current(A)');