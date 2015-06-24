clc
clear
//input data
H=60//Head on the pelton wheel in m
N=200//Speed of the pelton wheel in rpm
P=100//Power developed by the pelton wheel in kW
Cv=0.98//Velocity coefficient
UC1=0.45//Speed ratio 
n0=0.85//Overall efficiency of the wheel
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
C1=Cv*(2*g*H)^(1/2)//Velocity of the jet in m/s
U=UC1*(2*g*H)^(1/2)//Velocity of the buckets in m/s
D=(60*U)/(3.1415*N)//Diameter of the wheel in m
Q=(P*10^3)/(dw*g*H*n0)//Discharge of the wheel in m^3/s
d=((4*Q)/(3.1415*C1))^(1/2)//Diameter of the jet in m
Z=15+(D/(2*d))+1//Number of buckets rounding off to nearest decimal as the final answer has a decimal value less than 0.5
w=5*d//Width of the buckets in m
de=1.2*d//Depth of the buckets in m

//output
printf('(a)Diameter of the wheel is %3.2f m\n(b)Diameter of the jet is %3.3f m\n(c)Number of buckets is %3.f\n(d)Size of the buckets is \n    width of the bucket is %3.3f m\n    Depth of the bucket is %3.3f m',D,d,Z,w,de)
