clc;
clear;
format('e',11);
rho_v_tf=10^-18;
rho_v_t0=1;
tf=log(rho_v_tf)/(-6.6*10^18);              //from rho_v_tf=rho_v_t0*exp(-sigma/epsilone0*t) and for copper,taking sigma/epsilone0=6.6*10^18.
disp(tf,"The time taken by the charge to dissipate(in sec)=");
