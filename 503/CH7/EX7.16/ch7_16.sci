//to calculate terminal voltage and rated output current and calculate no of series turns/pole

clc;
P=100000;
V=200;
I_L=P/V;
I_f=5;
I_a=I_L+I_f;
I_se=I_a;
N_se=5;
N_f=1200;
I_feq=I_f+(N_se/N_f)*I_se;
n=1000;
E_a=225;
nn=950;
E_aa=E_a*(nn/n);
R_a=0.03;
R_se=0.004;
V_t=E_aa-I_a*(R_a+R_se);
disp(V_t,'terminal voltage(V)');
I_fd=0.001875*I_a;
V_t=200;
E_a=V_t+I_a*(R_a+R_se);
E_aa=E_a*(n/nn);
I_fnet=7.5;
N_f=1000;
N_se=ceil((I_fnet+I_fd-I_f)*(N_f/I_a));
disp(N_se,'no of series turns/pole');
