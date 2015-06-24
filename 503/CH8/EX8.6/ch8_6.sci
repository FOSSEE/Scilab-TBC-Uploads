//to calculate the excitation emf

clc;
Vt=3300;
Xs=18/3;
pf=.707;
P=800*1000;
Ia=P/(sqrt(3)*Vt*pf);
a=Ia*Xs/sqrt(2);
b=Vt/sqrt(3);
Ef=sqrt((a+b)^2+a^2)*sqrt(3);
disp(Ef,'excitation emf(V)(line)');