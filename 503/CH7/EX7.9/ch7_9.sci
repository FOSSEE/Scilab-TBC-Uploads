//to calculate electomagnetic power

clc;
n_f=3000;        //field speed
n_a=2950;        //armature speed
E=250;
E_a=E*(n_a/n_f);
V_t=250;
R_a=0.05;
I_a=(V_t-E_a)/R_a;
P_in=V_t*I_a;
disp(P_in,'power(W)');
P=E_a*I_a;
disp(P,'electromagnetic power(W)');
