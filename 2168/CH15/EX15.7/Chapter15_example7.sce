clc
clear
//Input data
Vf=6.75//Volume of fuel in c.c
l=65//Length of fuel line in cm
di=2.5//Inner diameter in mm
V=2.45//Volume of fuel in the injector valve in c.c
Vd=0.15//Volume of fuel to be delivered in c.c. 
p=150//Pressure in kg/cm^2
pp=1//Pump pressure in kg/cm^2
patm=1.03//Atmospheric pressure in kg/cm^2
b=78.8*10^-6//Coefficient of compressibility in cm^2/kg when pressure is taken as atmospheric

//Calculations
V1=(Vf+(3.14/4)*(di/10)^2*l+V)//Initial volume in c.c
dV=((b*V1*(p-pp)/patm))//Change in volume in c.c
d=(dV+Vd)//Total displacement of the plunger in c.c

//Output
printf('The total displacement of the plunger is %3.3f c.c',d)
