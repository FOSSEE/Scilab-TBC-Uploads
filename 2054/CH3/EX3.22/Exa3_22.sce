//Exa:3.22
clc;
clear;
close;
N=1000;//in rpm
V=240;//in volts
w=2*%pi*N/60;//in rad/sec
alpha=30;//in degrees
R=0.25;//in ohms
K=0.025;//in Nm/A^2
disp('When controlled through semiconverter');
V_a1=sqrt(2)*V*(1+cosd(alpha))/%pi;//in volts
I_a1=V_a1/(R+(K*w));
disp(I_a1,'Armature Current (in Amperes)=');
T_1=K*I_a1^2;
disp(T_1,'Motor Torque (in N-m)=');
disp('When controlled through full converter');
V_a2=2*sqrt(2)*V*cosd(alpha)/%pi;//in volts
I_a2=V_a2/(R+(K*w));
disp(I_a2,'Armature Current (in Amperes)=');
T_2=K*I_a2^2;
disp(T_2,'Motor Torque (in N-m)=');