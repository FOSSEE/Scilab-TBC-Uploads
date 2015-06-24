clc
clear
//input data
c =2.25//Chord length of an aerofoil in m
l=13.5//Span of the aerofoil in m
C=125//Velocity of the aerofoil in m/s
Cl=0.465//Lift coefficient
Cd=0.022//Drag coefficient
d=1.25//Density of the air in kg/m^3

//calculations
A=c*l//Area of cross section of the aerofoil in m^2
W=Cl*d*((C^2)/2)*A*10^-3//Weight carried by the wings of aerofoil in kN
D=Cd*d*((C^2)/2)*A//Drag force on the wings of aerofoil in N
P=D*C*10^-3//Power required to the drive the aerofoil in kW

//output
printf('(a)Weight carrried by the wings is %3.2f kN\n(b)Drag force on the wings of aerofoil is %3.2f N\n(c)Power required to drive the aerofoil is %3.3f kW',W,D,P)


//comments
// error in the first review is not printing the value of drag force which is corrected
