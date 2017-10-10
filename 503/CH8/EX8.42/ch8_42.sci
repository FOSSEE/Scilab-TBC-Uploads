//to caculate generator current,pf, real power,ecitation emf

clc;
clear
j = %i;
r=500*10^6;
V=22000;
Ia=r/(sqrt(3)*V);disp(Ia,'generator current(A)');
Vt=V/sqrt(3);
Zb=Vt/Ia;
MVA_b=500;
MW_b=500;
Xsg=1.57;
Xb=.4;
Xb=Xb/Zb;

rr=250;
rr=rr/MVA_b;
Vb=1;
Vt=1;
Ia=.5;
phi=asind(Xb*Ia/2);
pf=cosd(phi);disp(pf,'pf');
Pe=rr*pf;disp(Pe,'real power(pu)');
Eg=Vt+j*Xsg*rr**complex(cosd(-phi),sind(-phi));
Egg=abs(Eg)*V;disp(Egg,'excitation emf(V)');


rr=500;
rr=rr/MVA_b;
Vb=1;
Vt=1;
Ia=1;
phi=asind(Xb*Ia/2);
pf=cosd(phi);disp(pf,'pf');
Pe=rr*pf;disp(Pe,'real power(pu)');
Eg=Vt+j*Xsg*rr*complex(cosd(-phi),sind(-phi));
Egg=abs(Eg)*V;disp(Egg,'excitation emf(V)');