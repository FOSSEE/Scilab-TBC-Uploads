//Section-12,Example-2,Page no.-SS.59
//To calculate the conductivity of pure silicon at room temperature.
clc;
u_e=1500
u_h=500
e=1.6*10^-19
n_i=1.6*10^-10
C_i=e*n_i*(u_e+u_h)
disp(C_i,'Conductivity of pure silicon at room temperature(mho/cm)')

