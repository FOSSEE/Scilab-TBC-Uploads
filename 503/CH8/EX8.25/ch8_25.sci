//to calculate the excitation emf,power angle

clc;
Vt=1;
Ia=1;
pf=.8;phi=acosd(pf);
Iaa=Ia*complex(cosd(-phi),sind(-phi));
Xq=.5;
j=sqrt(-1);
Ef=Vt+j*Iaa*Xq;

dl=17.1;
w=phi+dl;
Id=Ia*sind(w);
Xd=.8;
CD=Id*(Xd-Xq);
Eff=abs(Ef)+CD;
Ef=Vt+j*Iaa*Xd;
disp(abs(Ef),'excitation emf(V)');
disp(atand(imag(Ef)/real(Ef)),'power angle');