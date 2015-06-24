//Example No. 3.7
clc;
clear;
close;
format('v',7);

//Given Data : 
w=400;//Kg
v=1;//m/s
MotorSpeed=1000;//rpm
MoI=0.5;//Moment of Inertia in Kg-m^2
winch=0.3;//Kg-m^2
Tnl=80;//N-m
Speed_nl=1000;//rpm
g=9.81;//gravity constant

//Solution : 
mass=w*g;//N
omega=MotorSpeed*2*%pi/60;//rad/sec
TotTorque=Tnl+mass*v/omega;//N-m
disp(TotTorque,"Total Motor Torque in N-m :  ");
J=MoI+winch+w*(v/omega)^2;//Kg-m^2
disp(J,"Moment of Inertia refered to motor shaft in Kg-m^2 : ");
