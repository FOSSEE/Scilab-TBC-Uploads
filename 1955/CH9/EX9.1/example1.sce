clc
clear
//input data
H=91.5//Head of the pelton wheel at inlet in m
Q=0.04//Discharge of the pelton wheel in m^3/s
N=720//Rotating speed of the wheel in rpm
Cv=0.98//Velocity coefficient of the nozzle 
n0=0.8//Efficiency of the wheel
UC1=0.46//Ratio of bucket speed to jet speed
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
P=dw*g*H*Q*n0*10^-3//Power developed in kw
C1=Cv*(2*g*H)^(1/2)//Jet speed in m/s
U=UC1*C1//Wheel speed in m/s
w=(2*3.1415*N)/60//Angular velocity of the wheel in rad/s
D=(2*U)/w//Diameter of the wheel in m
A=Q/C1//Jet area in m^2
d=((4*A)/3.1415)^(1/2)//Jet diameter in m
Dd=D/d//Wheel to jet diameter ratio at centre line of the buckets
Nsp=((1/(g*H))^(5/4))*(((P*10^3)/dw)^(1/2))*(N/60)*2*3.1415//Dimensionless power specific speed in rad

//output
printf('(a)Wheel-to-jet diameter ratio at the centre line of the buckets is %3.1f \n(b)\n    The jet speed of the wheel is %3.2f m/s\n    Wheel speed is %3.1f m/s\n(c)Dimensionless power specific speed is %3.3f rad',Dd,C1,U,Nsp)
