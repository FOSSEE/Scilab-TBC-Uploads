//to calculate syncronising power/elec deg,pu sync torque/mech deg

clc;
j=sqrt(-1);
Xd=.8;
Xq=.5;
Vt=1;
pf=.8;
phi=acosd(pf);
Ia=1*complex(cosd(phi),sind(phi));

Ef=Vt-j*Ia*Xq;
Eff=abs(Ef);
dl=atand(imag(Ef)/real(Ef));
w=-dl+phi;
Id=abs(Ia)*sind(w);
Ef=Eff+Id*(Xd-Xq);

Psyn=abs(Ef)*Vt*cosd(dl)/Xd+Vt^2*((Xd-Xq)/(Xd*Xq))*cosd(2*dl);
disp(Psyn*(%pi/180),'syncronising power(pu)/elec deg');
f=50;
P=12;
n_s=(120*f/P)*(2*%pi/60);
Tsyn=Psyn/n_s;disp(Tsyn,'pu sync torque/mech deg');

