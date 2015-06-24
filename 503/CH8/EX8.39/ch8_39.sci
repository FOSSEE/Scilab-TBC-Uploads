//to calculate sync reactance,voltage regulation,torque angle, ele power developed, voltage and kva rating

clc;
r=1000*10^3;
V=6600;
Ia=r/(sqrt(3)*V);
pf=.75;
phi=-acosd(pf);
Vt=V/sqrt(3);
Ef=11400/sqrt(3);
//Ef*complex(cosd(dl),sind(dl))=Vt+j*Xs*Ia*complex(cosd(phi),sind(phi))
//after solving
//6.58*cosd(dl)=3.81+.058*Xs;
//6.58*sind(dl)=.0656*Xs;
//so after solving 
//cosd(dl-phi)=.434;
dl=acosd(.434)+phi;

Xs=Ef*sind(dl)/65.6;disp(Xs,'sync reactance(ohm)');
vr=Ef*sqrt(3)/V-1;disp(vr,'voltage regulation(%)');
disp(dl,'torque angle(deg)');
P=3*Ef*Ia*cosd(dl-phi);disp(P,'ele power developed(W)');

volr=V/sqrt(3);disp(volr,'voltage rating(V)');
ir=Ia*sqrt(3);disp(ir,'current rating(A)');
r=sqrt(3)*volr*ir;disp(r,'VA rating');
