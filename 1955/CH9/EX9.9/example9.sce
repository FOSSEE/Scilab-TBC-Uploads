clc
clear
//input data
n0=0.74//Overall efficiency
H=5.5//Net head across the turbine in m
P=125//Required Power output in kW
N=230//Speed of the runner in rpm
nH=(1-0.18)//Hydraulic efficiency
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
U1=0.97*(2*g*H)^(1/2)//Runner tangential velocity in m/s
Cr1=0.4*(2*g*H)^(1/2)//Flow velocity in m/s

//calculations
Cx1=(nH*g*H)/U1//Absolute inlet whirl velocity in m/s    as flow is radial at outlet Cx2=0  in m/s
a11=atand(Cr1/Cx1)//Inlet guide vane angle in degree
b11=180+atand(Cr1/(Cx1-U1))//Angle of inlet guide vanes in radial direction in degree
D1=(U1*60)/(3.1415*N)//Runner inlet diameter in m
Q=(P*10^3)/(n0*dw*g*H)//Flow rate in m^3/s
b1=Q/(3.1415*D1*Cr1)//Height of runner in m

//output
printf('(a)Inlet guide vane angle is %3.1f degree\n(b)Angle of inlet guide vanes in radial direction is %3.1f degree\n(c)Runner inlet diameter is %3.3f m\n(d)Height of runner is %3.3f m',a11,b11,D1,b1)
