//to determine excitation emf, torque angle,stator current, pf, max power, kVAR delivered

clc;
j=sqrt(-1);
P=10000;
V=400;
Ia=P/(sqrt(3)*V);
pf=.8;
phi=acosd(pf);
Iaa=Ia*complex(cosd(-phi),sind(-phi));
Vt=V/sqrt(3);
X=16;
Ef=Vt+j*X*Iaa;
disp(abs(Ef),'excitation emf(V)');
dl=atand(imag(Ef)/real(Ef));
disp(dl,'torque angle');

Pe=P*pf;
Eff=abs(Ef)*1.2;
dl=(Pe/3)*X/(Eff*Vt);
ta=asind(dl);
disp(ta,'torque angle');
Ia=(Eff*complex(cosd(ta),sind(ta))-Vt)/(j*X);
disp(abs(Ia),'stator current(A)');
disp(cosd(-atand(imag(Ia)/real(Ia))),'pf');

Ef=413;
Pemax=Ef*Vt/X;
Ia=(Ef*complex(cosd(90),sind(90))-Vt)/(j*X);
disp(abs(Ia),'stator current(A)');
disp(cosd(-atand(imag(Ia)/real(Ia))),'pf');

Qe=(imag(Ia)/real(Ia))*Pe;disp(Qe,'kVar delivered');