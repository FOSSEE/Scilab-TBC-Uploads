//to compute the max power and torque,terminal voltage

clc;
V=3300;
Vt=V/sqrt(3);
P=1000*10^3;
pf=1;
Ia=P/(V*sqrt(3)*pf);
Xsm=3.24;
j=sqrt(-1);
Efm=Vt-j*Ia*Xsm;
Efg=abs(Efm);
P_emax=3*Vt*Efg/Xsm;disp(P_emax,'max power(W)');
p=24;
f=50;
w_sm=(120*f*2*%pi)/(p*60);
Tmax=P_emax/w_sm;disp(Tmax,'torque(Nm)');

Xsg=4.55;
Efm=Vt-j*Ia*Xsg;
Efmm=abs(Efm);
X=Xsm+Xsg;
P_emax=3*Efg*Efmm/X;disp(P_emax,'max power(W)');
Tmax=P_emax/w_sm;disp(Tmax,'torque(Nm)');

d=90;
Efm=Efg*complex(cosd(0),sind(0));
Efg=Efmm*complex(cosd(d),sind(d));
Ia=(Efg-Efm)/(j*X);
v=j*Ia*Xsm;
Vt=Efm+j*Ia*Xsm;
disp(abs(Vt)*sqrt(3),'line voltage(V)');
