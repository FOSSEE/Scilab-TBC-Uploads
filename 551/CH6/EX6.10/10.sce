clc
m_O2=1; //kg
m_H2=1; //kg
p=1*10^5; //Pa
T_O2=450; //K
T_H2=450; //K
T0=290; //K
R0=8.314;
M_O2=32;
M_H2=2;

R_O2=R0/M_O2;
v_O2=m_O2*R_O2*T_O2/p;

R_H2=R0/M_H2;
v_H2=m_H2*R_H2*T_H2/p;

v_f=v_O2 + v_H2; //total volume after mixing

dS_O2=R_O2*log(v_f/v_O2);
dS_H2=R_H2*log(v_f/v_H2);

dS_net=dS_O2 + dS_H2;

//Let E be the loss in availability 
E=T0*dS_net;
disp("Loss in availability=")
disp(E)
disp("kJ")