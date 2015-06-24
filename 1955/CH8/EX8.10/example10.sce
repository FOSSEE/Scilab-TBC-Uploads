clc
clear
//input data
Ihl=3//Head loss in impeller in m
Cr2=4.64//Flow velocity through impeller at outlet in m/s
U2=30//Blade outlet speed in m/s
dPi=35.3//Difference in pressure gauge readings at impeller inlet and outlet in m of water
Pg=4.7//Pressure gain in the casing in m of water 
n=0.385//Part of absolute kinetic energy converted into pressure gain
g=9.81//Acceleration due to gravity in m/s^2
d=1000//Density of water in kg/m^3
ss=0.85//Slip coefficient

//calculations
Kei=Pg/n//Kinetic energy at impeller exit in m/s
C2=((Kei)*2*g)^(1/2)//Velocity at impeller exit in m/s
Cx22=(C2^2-Cr2^2)^(1/2)//Absolute whirl component at outlet with fliud slip in m/s
Cx2=Cx22/ss//Ideal absolute whirl velocity in m/s
b22=atand(Cr2/(U2-Cx2))//Blade angle at exit in degree
Wm=ss*U2*Cx2//Euler work input in J/kg
nm=dPi/(U2*Cx22/g)//Manometric efficiency
dP=(U2*Cx22/g)-(Ihl)-(C2^2/(2*g))//Pressure rise in impeller in m

//output
printf('(a)\n    Exit blade angle is %3.2f degree\n    Euler work input is %3.2f J/kg\n(b)Manometric efficiency is %3.4f\n(c)Pressure rise in the impeller is %3.3f m',b22,Wm,nm,dP)
