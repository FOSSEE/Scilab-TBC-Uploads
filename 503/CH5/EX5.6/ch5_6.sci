// To calculate em power developed,mech power fed, torque provided by primemover

clc;
phi=32*10^-3;    //flux/pole
n=1600;        //speed in rpm
Z=728;        //no of conductors
p=4;
A=4;
E_a=phi*n*Z*(p/A)/60;
I_a=100;
P_e=E_a*I_a;
disp(P_e,'electromagnetic power(W)');
P_m=P_e;
disp(P_m,'mechanical power(W) fed');
w_m=2*%pi*n/60;
T=P_m/w_m;
disp(T,'primemover torque(Nm)');
