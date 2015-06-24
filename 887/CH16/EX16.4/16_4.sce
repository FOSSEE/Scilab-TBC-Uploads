clc
//ex16.4
V_T=240;      //dc supply voltage
R_A=0.065;      //armature resistance
R_F=10;      //field resistance
R_adj=14;      //adjustable resistance
n=1200;      //speed in rpm
P_rot=1450;      //rotational power loss
T_out=250;      //hoist torque
I_F=V_T/(R_F+R_adj);      //field current
//E_A at I_F and n from magnetization curve  
E_A_1=280;      //armature voltage
W_m_1=n*2*%pi/60;      //speed in radians per second
K=E_A_1/W_m_1;      //machine constant
T_rot=P_rot/W_m_1;      //rotational loss-torque
T_dev=T_rot+T_out;      //developed torque
I_A=T_dev/K;      //armature current
E_A_2=V_T-R_A*I_A;      //applying KVL
W_m_2=E_A_2/K;      //speed in radians per second
n_m=W_m_2*60/(2*%pi);      //speed in rpm
P_out=T_out*W_m_2;      //output power
I_L=I_F+I_A;      //line current
P_in=V_T*I_L;      //input power
eff=P_out*100/P_in;      //efficiency
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(n_m,'Motor speed in rpm')
disp(eff,'Efficiency of the motor')
