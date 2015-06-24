//find the change in the poweer angle;

clc;
Pe=4000;
V=400';
pf=.8;dl=acosd(pf);
Ia=Pe/(sqrt(3)*V*pf);
Vt=V/sqrt(3);
Xs=25;
Ef=Vt+j*Ia*complex(cosd(-dl),sind(-dl))*Xs;
a=atand(imag(Ef)/real(Ef));

dl=asind((Pe/3)*Xs/(Vt*abs(Ef)));
ang=dl+a;
disp(ang,'change in power angle(deg)');