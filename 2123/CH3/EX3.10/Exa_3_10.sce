//Example No. 3.10
clc;
clear;
close;
format('v',6);

//Given Data : 
MotorSpeed=1440;//rpm
Jmotor=0.4;//Kg-m^2
Jdc_load=0.6;//Kg-m^2(Inertia directly coupled load)
w_tl=100;//kg(weight of transratioonal load)
F_res=1.2;//N/Kg(Friction resistance for translational load)
v=10;//m/s
T_RotLoad=1.5;//N-m
g=9.81;//gravity constant

//Solution : 
MotorSpeed=MotorSpeed*2*%pi/60;//rad/sec
F_horz=w_tl*F_res;//N(horizontal force of translational load)
mass=w_tl*g;//N
J=Jmotor+Jdc_load+mass*(v/MotorSpeed)^2;//Kg-m^2
disp(J,"Moment of Inertia at motor shaft in Kg-m^2 :  ");
T=T_RotLoad+F_horz*v/MotorSpeed;//N-m
disp(T,"Torque at motor shaft in N-m : ");
