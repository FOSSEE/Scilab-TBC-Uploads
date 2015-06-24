//Exa:1.20
clc;
clear;
close;
V=440/sqrt(3);//in volts
R_s=2;//in ohms
R_r=2;//in ohms
f=50;//in hertz
X_s=3;//in ohms
P=4;//no. of poles
X_r=3;//in ohms
R_o1=R_s+R_r;//Equivalent resistance of motor as referred to stator (in ohms)
X_o1=X_s+X_r;////Equivalent reactance of motor as referred to stator (in ohms)
I_st=V/(sqrt(R_o1^2+X_o1^2));//Starting current (in amperes)
P_cu=3*I_st^2*R_r;//Copper loss (in watts)
P2=7446;//in watts
N_s=120*f/P;//Synchronous Speed (in rpm)
T_st=9.55*P2/N_s;//Starting Torque (in Newton-meter)
disp(I_st,'Starting Current of motor at 50 Hertz (in amperes)=');
disp(T_st,'Starting Torque of motor at 50 hertz (in Newton-meters)=');
V1=V*10/50;//in volts
X_o2=X_o1*10/50;//in ohms
I_st1=V1/(sqrt(R_o1^2+X_o2^2));//Starting current (in amperes)
P_2=3*I_st1^2*R_r;//Copper loss (in watts)
N_s1=120*10/P;//Synchronous Speed (in rpm)
T_st2=9.55*P_2/N_s1;//Starting Torque (in Newton-meter)
disp(I_st1,'Starting Current of motor at 10 Hertz (in amperes)=');
disp(T_st2,'Starting Torque of motor at 10 hertz (in Newton-meters)=');