//to calculate the generator current and its pf

clc;
j=sqrt(-1);
X=.24;
r=400;    //rating in MVA
rr=600;    //rating in MVA
Pe=r/rr;
Vt=1;
Vth=1;
dl=asind(Pe*X/(Vt*Vth));
Ia=2*sind(dl/2)/X;
V=24000;
IaB=(rr/3)*10^6/(V/sqrt(3));
Iaa=Ia*IaB;disp(Iaa,'generating current(A)');
phi=dl/2;
pf= cosd(phi);disp(pf,'power factor');

Pe=1;
dl1=asind(Pe*X/(Vt*Vth));
Ia=2*sind(dl1/2)/X;
Iaa=Ia*IaB;disp(Iaa,'generating current(A)');
phi=dl1/2;
pf= cosd(phi);disp(pf,'power factor');
Ef=Vt+j*Ia*(complex(cosd(-phi),sind(-phi)))*X;
Eff=abs(Ef)*V;
dl2=atand(imag(Ef)/real(Ef));

Xth=.24;
Pe=abs(Ef)*Vth*sind(dl1+dl2)/(X+Xth);disp(Pe,'Pe(pu)');