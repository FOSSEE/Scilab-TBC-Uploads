//Exa 8.14
clc;
clear;
close;
format('v',13)
//given data
t_hi=94;// in degree C
t_ci=15;// in degree C
Mw=0.36;// in kg/s
Mo=0.153;// in kg/s
C_po=2*10^3;// in J/kg K
C_pw=4.186*10^3;// in J/kg K
U=10.75*10^2;// in W/m^2 K
A=1;// in m^2
Ch=Mo*C_po;// in kW/K
Cc=Mw*C_pw;// in kW/K
C_min=Ch;// in W/K
C_max=Cc;// in W/K
C=C_min/C_max;
NTU=U*A/C_min;
// Effectiveness
N=NTU;
epsilon = (1-exp(-N*(1-C)))/(1-C*exp(-N*(1-C)));
mCp_min=C_min;
q_max= mCp_min*(t_hi-t_ci);// in W
q_actual= epsilon*q_max;// in W
disp(q_actual,"Total heat transfer in watt")
// Outlet temp. of water
t_co= q_actual/Cc+t_ci;// in degree C
disp(t_co,"Outlet temperature of water in degree C")
// Outlet temp. of oil
t_ho=t_hi-q_actual/Ch;//in degree C
disp(t_ho,"Outlet temperature of oil in degree C")


//Note: Evaluation of Cc and Ch in the book is wrong so the Answer in the book is wrong







