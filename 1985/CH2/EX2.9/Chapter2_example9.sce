clc
clear
d=(0.82*10^-3)//Diameter of the wire in m
dl=(1*10^-3)//Length of elongation produced in m
F=(0.33*9.8)//Force in N
q=1//Angular twist in radians
T=(10*10^-5)//Torque in N
n=(2.2529*10^9)//Rigidity modulus in N/m^2

//Calculations
Y=(F/(3.14*(d/2)^2*dl))//youngs modulus *L in N/m^2
s=(Y/(2*n))-1//Poissons ratio

//Output
printf('Poissons ratio is %3.4f',s)
