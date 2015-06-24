clc
clear
//input data
D1=0.9//External diameter of the turbine in m
D2=0.45//Internal diameter of the turbine in m
N=200//Speed of turbine running in rpm
b1=0.2//Width of turbine at inlet in m
Cr1=1.8//Velocity of flow through runner at inlet in m/s
Cr2=Cr1//Velocity of flow through runner at outlet in m/s
a11=10//Guide blade angle to the tangent of the wheel in degree
a22=90//Discharge angle at outlet of turbine in degree
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
C1=Cr1/sind(a11)//Absolute velocity of water at inlet of runner in m/s
Cx1=Cr1/tand(a11)//Velocity of whirl at inlet in m/s
U1=(3.1415*D1*N)/60//Runner tip speed at inlet in m/s
Wx1=Cx1-U1//Inlet whirl velocity component in m/s
W1=(Wx1^2+Cr1^2)^(1/2)//Relative velocity at inlet in m/s
b11=atand(Cr1/Wx1)//Runner blade entry angle in degree
U2=(3.1415*D2*N)/60//Runner tip speed at exit in m/s
b22=atand(Cr2/U2)//Runner blade exit angle in degree
b2=D1*b1/D2//Width of runner at outlet in m
Q=3.1415*D1*b1*Cr1//Discharge of water in turbine in m^3/s
m=dw*Q//Mass of water flowing through runner per second in kg/s
V2=Cr2//Velocity of water at exit in m/s 
H=(U1*Cx1/g)+(V2^2/(2*g))//Head at the turbine inlet in m
W=m*U1*Cx1*10^-3//Power developed in kW
nH=(U1*Cx1/(g*H))//Hydraulic efficiency

//output
printf('(a)Absolute velocity of water at inlet of runner is %3.3f m/s\n(b)Velocity of whirl at inlet is %3.3f m/s\n(c)Relative velocity at inlet is %3.3f m/s\n(d)\n    Runner blade entry angle is %3.2f degree\n    Runner blade exit angle is %3.2f degree\n(e)Width of runner at outlet is %3.1f m\n(f)Mass of water flowing through runner per second is %3.f kg/s\n(g)Head at the turbine inlet is %3.3f m\n(h)Power developed is %3.3f kW\n(i)Hydraulic efficiency is %3.4f',C1,Cx1,W1,b11,b22,b2,m,H,W,nH)
