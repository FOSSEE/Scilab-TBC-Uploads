// to compute terminal voltage at rated voltage current

clc;
R_a=0.05;
R_se=.01;
N_f=1000;
N_se=3;
I_sf=5.6;        //shunt field current
I_L=200;
I_a=I_L+I_sf;
N=N_f*I_sf+I_a*N_se;        //excitation ampere turns
I_freq=N/N_f;

E_a=282;
n=1200;
nn=1150;
Ea=E_a*(nn/n);
V_t=Ea-I_a*(R_a+R_se);
disp(V_t,'terminal voltage(V)');
