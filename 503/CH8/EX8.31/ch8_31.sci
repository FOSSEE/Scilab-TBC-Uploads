//to calculate synchronising power and torque coeff/deg mech shift

clc;
clear
j = %i;
V=11000;
Vt=V/sqrt(3);
P=6*10^6;
Ia=P/(sqrt(3)*V);
ohm_b=Vt/Ia;
Xs=.5;
Xss=Xs*ohm_b;

f=50;
P=8;
n_s=(120*f/P)*(2*%pi/60);

Ef=Vt;
dl=0;
Psyn=(%pi/15)*(Ef*Vt/Xss)*cosd(dl);disp(Psyn,'synchronising power(W)');
Tsyn=Psyn/n_s;disp(Tsyn,'torque coeff(Nm)');

pf=.8;
phi=acosd(pf);
Ef=Vt+j*Ia*Xss*complex(cosd(-phi),sind(-phi));
dl=atand(imag(Ef)/real(Ef));
Psyn=(%pi/15)*(abs(Ef)*Vt/Xss)*cosd(dl);disp(Psyn,'synchronising power(W)');
Tsyn=Psyn/n_s;disp(Tsyn,'torque coeff(Nm)');