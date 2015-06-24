//Caption:Determine the torque in Kgm.,H.P. & efficiency of the motor.
//Exam:2.41
clc;
clear;
close;
W_1=75;//load on one side of the brake(in Kg)
W_2=5;//load on other side of the brake(in Kg)
W=W_1-W_2;//effective force(in Kg)
R=1;//radius of the brake pulley (in m)
T=W*R;//torque(in Kg-m)
N=1200;//speed of the small shunt motor(in rpm)
H=(2*3.14)*(N*T)/33000;//torque in H.P.
disp(H,'torque (in H.P.)=');
H_P=735.5;//value of one H.P.
O_p=H*H_P;//output power(in Watt)
I_c=80;//input current(in Amp)
V=250;//input voltage(in V)
I_p=I_c*V;//input power(in Watt)
E=(O_p/I_p)*100;//efficiency of the motor
disp(E,'efficiency of the motor(in %)=');