//Example No. 3.6
clc;
clear;
close;
format('v',6);

//Given Data : 
v=1.2;//belt conveyer speed in m/s
TransRate=100;//rate of transportation of material in tons/hour
l=200;//length of belt in meter
MotorSpeed=1200;//rpm
MoI=0.1;//Moment of Inertia in Kg-m^2


//Solution : 
//Part A
TransRate=TransRate*1000/60/60;//rate of transportation of material in Kg/sec
TransTime=l/v;//in sec
omega=MotorSpeed*2*%pi/60;//rad/sec
M=TransRate*TransTime;//Kg
J=M*(v/omega)^2;//Kg-m^2
disp(J,"Load Inertia in Kg-m^2 : ");

//Part B
t=8;//sec
a=v/t;//m/s^2
TorqueInertai=MoI*omega/t;//N-m
F=M*a;//N
Tload=F*v/omega;//N-m
TotalTorque=Tload+TorqueInertai;//N-m
disp(TotalTorque,"Total Torque in N-m : ");
