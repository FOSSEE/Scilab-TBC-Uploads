//Caption:Find R_fx and (a)terminal voltage (b) voltage regulation (c) Efficiency
//Exa:5.6
clc;
clear;
close;
R_fw=30;//in ohms
R_a=0.2;//in ohms
N_f=200;//turns/pole
P_r=1200;//in Watts
I_L=100;
D_mmf=0.5*I_L;//demagnetizing mmf
V_nL=170;//no load voltage (in Volts)
//Refer to fig:5.26 (magnetization curve)
I_f=3.5;//field current in Amperes
R_f=V_nL/I_f;
R_fx=R_f-R_fw;
disp(R_fx,'R_fx (in ohms)=');
//First iteration:
//Assume 
E_a=170;
V_t1=E_a-103.5*R_a;
//Second iteration:
I_f2=V_t1/R_f;//actual field current
I_fe2=(N_f*I_f2-D_mmf)/N_f;
//Refer to fig:5.26
E_a2=165;
V_t2=E_a2-103.07*R_a;
//third iteration
I_f3=V_t2/R_f;//actual field current
I_fe=(N_f*I_f-D_mmf)/N_f;
//Refer to fig:
E_a3=163;
V_t3=E_a3-102.97*R_a;
V_t=V_t3;
disp(V_t,'(a) Terminal voltage (in Volts)=');
I_f=V_t/R_f;
E_a=E_a3;
VR=(V_nL-V_t)*100/V_t;
disp(VR,'(b) Voltage Regulation (%)=');
P_o=V_t*I_L;//power output
P_cu=R_a*(I_L+I_f)^2+R_f*I_f^2;//copper loss
P_d=P_o+P_cu;//power developed
P_in=P_d+P_r;//power input
Eff=P_o*100/P_in;
disp(Eff,'(c) Efficiency (%)=');