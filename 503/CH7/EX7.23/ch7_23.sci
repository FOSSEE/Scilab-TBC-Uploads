//to calculate no series turns

clc;
I_sf=5.6;
N_f=1000;
AT_f=I_sf*N_f;
I_a=205.6;
Z=400;
I_L=200;
AT_d=Z*(I_a/I_L);
V_t=250;
R_a=0.05;
R_se=.01;
E_a=V_t+I_a*(R_a+R_se);
n=1150;
nn=1200;
Ea=E_a*(nn/n);

I_fnet=6.2;
ATnet=I_fnet*N_f;

ATse=ATnet+AT_d-AT_f;
Nse=ceil(ATse/I_a);
disp(Nse,'no of series turns/pole');