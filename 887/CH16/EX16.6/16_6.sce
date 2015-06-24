clc
//ex16.6
V_F=140;      //field voltage
R_F=10;      //field resistance
R_adj=4;      //adjusting resistance
R_A=0.065;      //armature resistance
n_A=1000;      //armature speed in rpm
I_fl=200;      //full-load current
eff=0.85;      //efficiency not including power supplied to field circuit
I_F=V_F/(R_adj+R_F);      //field current
//E, voltage from magnetization curve for speed of n=1200
n=1200;
E=280;      //voltage of armature
//E_A is no-load voltage
E_A=E*n_A/n;      //E_A is proportional to speed
V_FL=E_A-R_A*I_fl;      //full-load voltage
VR=(E_A-V_FL)*100/V_FL;      //voltage regulation
P_out=I_fl*V_FL;      //output power
P_dev=P_out+(I_fl^2)*R_A;      //developed power
W_m=n_A*2*%pi/60;      //angular speed
P_in=P_out/eff;      //input power
P_loss=P_in-P_dev;      //all power losses combined
T_in=P_in/W_m;      //input torque
T_dev=P_dev/W_m;      //developed torque
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(I_F,'Field current in amperes')
disp(E_A,'no-load voltage in volts')
disp(V_FL,'full-load voltage in volts')
disp(VR,'percentage voltage regulation')
disp(T_in,'input torque in Nm')
disp(T_dev,'developed torque')
disp(P_loss,'all types of power losses combined in watts')
