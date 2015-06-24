//to find no of poles,MVA rating, prime mover rating and op torque

clc;
f=50;
n_s=100;
P=120*f/n_s;disp(P,'no of poles');
r=110;    //MVA rating
pf=.8;
rr=r/pf;disp(rr,'MVA rating');
eff=.971;
rt=r/eff;disp(rt,'prime mover rating(MW)');
T_PM=rt*1000*60/(2*%pi*n_s);disp(T_PM,'op torque(Nm)');