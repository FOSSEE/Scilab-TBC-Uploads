//to calculate excitation emf,torque angle, eff, shaft op

clc;
j=sqrt(-1);
Va=.8;
Xa=5.5;
Xs=Va+j*Xa;
V=3300;
Ia=160;
pf=.8;
loss=30000;
phi=acosd(pf);
Ef=V/sqrt(3)-Xs*Ia*complex(cosd(-phi),sind(-phi));disp(abs(Ef),'excitation emf(V)');
dl=atand(imag(Ef)/real(Ef));disp(dl,'torque angle(deg)');
P_mech=3*abs(Ef)*Ia*cosd(-phi-dl);
op_sft=P_mech-loss;disp(op_sft,'shaft op(W)');
Pip=sqrt(3)*V*Ia*pf;
eff=op_sft/Pip;disp(eff*100,'efficiency(%)');
