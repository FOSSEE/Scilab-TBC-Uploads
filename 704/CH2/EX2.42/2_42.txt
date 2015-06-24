//Caption:Determine the torque in Kgm.,output in Watts & efficiency of the motor.
//Exam:2.42
clc;
clear;
close;
W_1=40;//load on one side of the brake(in Kg)
W_2=5;//load on other side of the brake(in Kg)
W=W_1-W_2;//effective force(in Kg)
R=0.5;//radius of the brake pulley (in m)
T=W*R;//torque(in Kg-m)
N=1500;//speed of the small shunt motor(in rpm)
O=(2*3.14)*(N*T)/60;//output (in Kg-m/sec)
O_p=O*9.81;//output (in watts)
disp(ceil(O_p),'output (in watts)');
I_c=80;//input current(in Amp)
V=400;//input voltage(in V)
I_p=I_c*V;//input power(in Watt)
E=(O_p/I_p)*100;//efficiency of the motor
disp(E,'efficiency of the motor(in %)=');