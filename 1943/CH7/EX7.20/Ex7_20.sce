
clc
clear
//Input data
p=1.5//Pressure in bar
x1=0.9//Dryness fraction
m=7//Steam flow rate in kg/s
N=3000//Turbine speed in rpm
x=0.7//Velocity ratio
y=0.75//Velocity ratio
a=20//Exit angle in degrees
b2=a//Angle in degrees
hx=1/10//Fraction of height

//Calculations
v=0.001052+x1*1.15937//Specific volume in m^3/kg
Dm=((m*v*60)/(3.14*hx*y*3.14*N))^(1/3)//Diameter in m
hb=Dm*1000*hx//Height in mm
Vb=(3.14*Dm*N)/60//Velocity in m/s
dVw=((2*x*Vb*cosd(a)/sind(a))-Vb)//Velocity in m/s
P=(m*dVw*Vb)/1000//Power developed in kW

//Output
printf('Height of the moving blades at exit is %3.1f mm \n Power developed in the blade row is %3.2f kW',hb,P)
