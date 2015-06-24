clc
//ex16.3
n_2=800;      //speed in rpm
I_A=30;      //armature current
I_F=2.5;      //field current
R_A=0.3;      //armature resistance
R_F=50;      //field resistance
V_F=I_F*R_F;      //field coil voltage
//E_A1 and n_1 from magnetization curve
E_A1=145;      //induced voltage
n_1=1200;      //speed in rpm
E_A2=n_2*E_A1/n_1;
W_m=n_2*2*%pi/60;      //speed in radians per second
K=E_A2/W_m;      //K*phi is taken as K, machine constant
T_dev=K*I_A;      //developed torque
P_dev=W_m*T_dev;      //developed power
V_T=R_A*I_A+E_A2;      //voltage applied to armature
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_F,'Voltage applied to field circuit in volts')
disp(V_T,'Voltage applied to armature in volts')
disp(T_dev,'Developed torque in Nm')      //Nm-newton meter
disp(P_dev,'Developed power in watts')
