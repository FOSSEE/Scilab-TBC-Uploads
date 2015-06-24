clc
clear
//input data

b22=30//The blade air angle at the tip in degrees
D2=0.466//The impeller diameter in m
Q=3.82//The discharge of the air by fan in m^3/s
m=4.29//Mass flow rate of the air by the fan in kg/s
H=0.063//Pressure developed by a fan in m W.G
pi2=0.25//Flow coefficient at impeller exit
W=3//Power supplied to the impeller in kW
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
g=9.81//Acceleration due to gravity in m/s^2
dw=10^3//Density of water in kg/m^3

//calculations
IW=Q*dw*g*H*(10^-3)//Ideal work done in kW
nf=IW/W//Fan efficiency
U2=(((W*10^3)/m)/(1-(pi2/tand(b22))))^(1/2)//The impeller tip speed in m/s
Cr2=pi2*U2//The radial velocity at exit in m/s
Cx2=U2-(Cr2/tand(b22))//Outlet absolute velocity of air in tangential direction in m/s
sp=2*Cx2/U2//Presuure coefficient of the fan
R=1-(Cx2/(2*U2))//Degree of reaction of the fan
N=(U2*60)/(3.141592*D2)//Rotational speed of the fan in rpm
b2=Q/(3.14*D2*Cr2)//Impeller width at the exit in m

//output
printf('(a)The fan efficiency is %3.3f\n(b)The pressure coefficient is %3.3f\n(c)The degree of reaction of the fan is %3.3f\n(d)The rotational speed of the fan is %3.1f rpm\n(e)The impeller width at exit is %3.3f m',nf,sp,R,N,b2)
