clc;
//page no 343
//problem no 10.12.1
p=10;t=0.3*10^-6;gm=2*10^-3;
q=1/p;f_max=q/(2*%pi*t);
Z2=p/gm;
R2=Z2;//Z2 is resistance
//Determination of equivalent tuning capacitance
C1=t/R2;
Ceq=gm*t;
disp('f',Ceq,'The equivaent tuning capacitance is');