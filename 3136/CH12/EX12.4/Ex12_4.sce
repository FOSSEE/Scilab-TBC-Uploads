clear all; clc;

disp("From Ts2/T1=T3/Ts4=(p2/p1)^((k-1)/k),we have Ts2=901 R")
disp("Ts4=1264.6R")
disp("From Eta_c=(Ts2-T1)/(T2-T1) we have T2=980.2")
disp("Hence w_c=Cp*(T2-T1)=149.4hp/(lbm/s)")
disp("From Eta_t=(T3-T4)/(T3-Ts4),we have T4=1374.5R we hence wt=249.7hp/(lbm/s)")
disp("w=w_t-w_c")
w_t=249.7
w_c=149.4
w=w_t-w_c
printf(" w=%0.1f hp/(lbm/s)",w)
disp("q_in=Cp*(T3-T2)=383.5hp/(lbm/s)")
w=100.2
q_in=383.5
Eta_th=w/q_in
printf(" Eta_th=w/qin %0.2f =26 percent",Eta_th)
















