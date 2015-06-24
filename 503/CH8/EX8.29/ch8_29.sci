//to calculate power angle,excitation emf,field current

clc;
j=sqrt(-1);
MVA_b=300;
kV_b=22;

Pe=250/MVA_b;
pf=.85;
Vt=1;
Ia=Pe/(pf*Vt);
phi=acosd(pf);
Iaa=Ia*complex(cosd(-phi),sind(-phi));
Xq=1.16;
Xd=1.93;
Ef=Vt+j*Iaa*Xq;
dl=atand(imag(Ef)/real(Ef));disp(dl,'power angle');
w=phi+dl;
Id=abs(Iaa)*sind(w);
Ef=abs(Ef)+Id*(Xd-Xq);
disp(Ef*kV_b,'excitation emf(V)');

If=338;
If=If*Ef/1;disp(If,'field current(A)');