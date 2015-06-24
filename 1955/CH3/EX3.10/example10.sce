clc
clear
//input data
H=0.075//Pressure developed by a fan in m W.G
D2=0.89//The impeller diameter in m
N=720//The running speed of the fan in rpm
b22=39//The blade air angle at the tip in degree
b2=0.1//The width of the impeller in m
Cr=9.15//The constant radial velocity in m/s
d=1.2//Density of air in kg/m^3
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
IW=(dw*g*H)/d//Ideal work done in J/kg
U2=(3.1415*D2*N)/60//The impeller tip speed in m/s
Wx2=Cr/tand(b22)//Relative whirl component of velocity at outlet in m/s
Cx2=U2-(Wx2)//Outlet absolute velocity of air in tangential direction in m/s
Wm=U2*Cx2//Actual work done per unit mass flow rate in J/kg
nf=IW/Wm//Fan efficiency
Q=3.1415*D2*b2*Cr//The discharge of the air by fan in m^3/s
m=d*Q//Mass flow rate of the air by the fan in kg/s
W=m*Wm*10^-3//Power required to drive the fan in kW
R=1-(Cx2/(2*U2))//Stage reaction of the fan
sp=2*Cx2/U2//The pressure coefficient

//output
printf('(a)The fan efficiency is %3.3f\n(b)The Discharge of air by the fan is %3.3f m^3/s\n(c)The power required to drive the fan is %3.4f kW\n(d)The stage reaction of the fan is %3.4f\n(e)The pressure coefficient of the fan is %3.3f',nf,Q,W,R,sp)
