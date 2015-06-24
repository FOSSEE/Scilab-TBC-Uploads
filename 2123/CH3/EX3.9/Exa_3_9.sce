//Example No. 3.9
clc;
clear;
close;
format('v',7);

//Given Data : 
Jmotor=0.3;//Kg-m^2
Jgd_load=15;//Kg-m^2(Inertia gear driven load)
GSRratio=0.1;//gear speed reduction ratio
Jbd_load=0.6;//Kg-m^2(Inertia belt driven load)
d1=10;//cm(diameter of driver pulley)
d2=30;//cm(diameter of driven pulley)
MotorSpeed=1440;//rpm
Tload1=100;//N-m
Tload2=35;//N-m

//Solution : 
MotorSpeed=MotorSpeed*2*%pi/60;//rad/sec
Speed_gd=GSRratio*MotorSpeed;//rad/sec
Speed_bd=MotorSpeed*d1/d2;//rad/sec
//Equating Kinetic Energies
//1/2*J*MotorSpeed^2=1/2*Jmotor*MotorSpeed^2+1/2*Jgd_load*speed_gd^2+1/2*Jbd_load*speed_bd^2
J=(1/2*Jmotor*MotorSpeed^2+1/2*Jgd_load*Speed_gd^2+1/2*Jbd_load*Speed_bd^2)*2/MotorSpeed^2
disp(J,"Moment of Inertia refered to motor shaft in Kg-m^2 : ");
//Equating power of motor
//T*(MotorSpeed)=Tload1*Speed_gd+Tload2*Speed_bd
T=(Tload1*Speed_gd+Tload2*Speed_bd)/MotorSpeed;//N-m
disp(T,"Torque in N-m : ");
Pdev=T*MotorSpeed;//watt
disp(Pdev,"Power developed by the motor in watts : ");
