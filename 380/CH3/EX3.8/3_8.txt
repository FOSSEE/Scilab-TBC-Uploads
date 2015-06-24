//Caption:Find the rotor speed and average torque developed by motor
//Exa:3.8
clc;
clear;
close;
N=2;//no. of poles
f=60;//frequency in Hz
I_rms=10;//current intake
L_q=1;//min inductance (in H)
L_d=2;//max inductance(inH)
w=2*%pi*f;
disp(w,'rotor speed(in rad/sec)=');
//Refer to eqn:3.52
T_avg=(-1)*0.125*(L_d-L_q)*((I_rms*sqrt(2))^2)*sind(2*45);
if ( T_avg <0 ) then;
disp ((T_avg*(-1)), "average torque developed by motor (in Newton-meter)=");
else;
disp (T_avg,"average torque developed by motor (in Newton-meter)=");
end