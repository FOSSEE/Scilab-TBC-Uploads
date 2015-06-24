clc
clear
//Input data
l=2//Length of wire in m
d=(0.4*10^-3)//Diameter of the wire in m
x=(1.03*10^-3)//Extension in length in m
L=2//Load in kg
C=(4.52*10^-6)//Couple in N/m
a=0.03//Twist angle in radians

//Calculations
Y=((L*9.8*l)/(x*3.14*(d/2)^2))/10^11//Young's modulus in N/m^2*10^11
S=((C*2*l)/(3.14*(d/2)^4*a))/10^11//Modulus of rigidity in N/m^2*10^11
s=(Y/(2*S))-1//Poisson's ratio

//Output
printf('Youngs modulus is %3.2f*10^11 N/m^2\nModulus of rigidity is %3.2f*10^11 N/m^2\nPoissons ratio is %3.4f',Y,S,s)
