//find motor pf

clc;
j=sqrt(-1);
V=6600;
Vt=V/sqrt(3);
pf=.8;
phi=acosd(pf);
P=800000;
Ia=P/(sqrt(3)*V*pf);
Zs=2+20*j;
Ef=Vt-Zs*Ia*complex(cosd(phi)+sind(phi));
Pip=1200*10^3;
theta=atand(imag(Zs)/real(Zs));
dl=acosd((real(Ef)^2*cosd(theta)/abs(Zs)-P/3)/(real(Ef)*abs(Ef)/abs(Zs)))-theta;

Ia=(real(Ef)-abs(Ef)*complex(cosd(-dl),sind(-dl)))/Zs;
phi=atand(imag(Ia)/real(Ia));
disp(cosd(phi),'pf');