clc
clear
//Input data
l=0.8//Length of the wire in m
d=(1.8*10^-3)//Diameter of the wire in m
a=1.5//Angle of twist in degrees
S=(1.8*10^11)//Modulus of rigidity of the material in N/m^2

//Calculations
r=(a*3.14)/180//Angle of twist in radians
W=((3.14*S*(d/2)^4*r^2)/(4*l))/10^-5//Work required to twist the wire in J*10^-5

//Output
printf('Work required to twist the wire is %3.2f*10^-5 J',W)
