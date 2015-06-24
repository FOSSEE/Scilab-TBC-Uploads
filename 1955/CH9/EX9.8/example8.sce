clc
clear
//input data
N=1260//Rotational speed of the francis turbine in rpm
H=124//The net head in m
Q=0.5//Volume flow rate of the turbine in m^3/s
r1=0.6//Radius of the runner in m
b1=0.03//Height of the runner vanes at inlet in m
b11=72//Angle of inlet guide vanes in radial direction in degree
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
Cx2=0//Absolute exit whirl velocity in m/s as flow is radial at outlet

//calculations
m=dw*Q//Mass flow rate in kg/s
T1=-m*r1//Torque by the turbine in Nm in terms of Cx1
A=2*3.1415*r1*b1//Area at inlet in m^2
Cr1=Q/A//Inlet flow velocity in m/s
Cx1=Cr1*tand(b11)//Absolute inlet whirl velocity in m/s
T=-T1*Cx1//Torque by water on the runner in Nm
w=(2*3.1415*N)/60//Angular velocity of the turbine in rad/s
W=T*w*10^-3//Power exerted in kW
nH=W*10^3/(dw*g*Q*H)//Hydraulic efficiency 

//output
printf('(a)Torque by water on the runner is %3.f Nm\n(b)Power exerted is %3i kW\n(c)Hydraulic efficiency is %3.3f',T,W,nH)
