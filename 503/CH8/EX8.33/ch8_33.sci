//to calculate sync current, power and torque

clc;
j=sqrt(-1);
P=12000;
V=400;
pf=.8;
Ia=P/(sqrt(3)*V*pf);
phi=acosd(pf);
Vt=V/sqrt(3);
Xs=2.5;
Ef=Vt-j*Ia*complex(cosd(phi),sind(phi))*Xs;
tandl=4;
Es=2*abs(Ef)*sind(tandl/2);
Is=Es/Xs;disp(Is,'sync current(A)');
dl=atand(imag(Ef)/real(Ef));
Ps=3*Vt*Is*cosd(dl+tandl/2);disp(Ps,'power(W)');
n_s=25*%pi;
T_s=Ps/n_s;
disp(T_s,'torque(Nm)');