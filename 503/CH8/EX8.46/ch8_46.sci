//to find exciting emf neglecting saliency and accounting saliency

clc;
j=sqrt(-1);
Xd=.12/3;
Xq=.075/3;

disp('neglecting saliency');
Xs=Xd;
V=440;
pf=.8;
phi=acosd(pf);
Vt=V/sqrt(3);
Ia=1000;
Ef=Vt+j*Xs*Ia*complex(cosd(-phi),sind(-phi));
disp(abs(Ef)*sqrt(3),'excitation emf(line)(V)');
disp('accounting saliency');
w=atand((Vt*sind(phi)+Ia*Xq)/(Vt*cosd(phi)));
dl=w-phi;
Ef=Vt*cosd(dl)+Ia*sind(dl)*Xd;
disp(abs(Ef)*sqrt(3),'excitation emf(line)(V)');
