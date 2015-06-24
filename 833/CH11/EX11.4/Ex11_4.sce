//Caption: Calculate (a)Mechanical power output (b)Torque (c)Maximum Torque (d)Speed at maximum torque (e)Power output when torque is maximum
//Exa:11.4
clc;
clear;
close;
p=4//Number of poles
V=440//Voltage of motor(in volts)
f=50//Frequency(in hertz)
n_s=1500//Synchronous speed(r.p.m)
sp=1440//Speed of motor at load(in r.p.m)
s=4//Slip at full load(in %)
t=1.8//Stator to rotor turns ratio
R_r=0.1//Resistance of rotor per phase(in ohms)
X_r=0.8//Reactance of rotor per phase at standstill(in ohms)
r_r=R_r*(t^2)//Rotor resistance referred to stator(in ohms)
x_r=X_r*(t^2)//Reactance of rotor at stanstill referred to stator(in ohms)
E=V/(sqrt(3))
P=((s/100)*(E^2)*r_r)/((r_r^2)+((s/100)^2)*(x_r^2))
T=(3*P)/(2*(%pi)*(n_s/60))
P_M=(3*P*sp)/n_s
disp(P_M,'(a)Mechanical power output(in watt)=')
disp(T,'(b)Torque(in N-m)=')
s_m=R_r/X_r
N=n_s*(1-s_m)
P_1=((s_m)*(E^2)*(r_r))/((r_r^2)+((s_m^2)*(x_r^2)))
T_m=(3*P_1)/(2*(%pi)*(n_s/60))
disp(T_m,'(c)Maximum torque(in N-m)=')
disp(N,'(d)Speed at maximum torque(in r.p.m)=')
P_o=(3*P_1*N)/n_s
disp(P_o,'(e)Output power at maximum torque(in watt)=')