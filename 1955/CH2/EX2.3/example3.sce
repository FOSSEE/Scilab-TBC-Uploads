clc
clear
//input data
A=10*1.2//Area of the airplane wing in m^2
C=((240*10^3)/3600)//Velocity of the wing in m/s
F=20//Total aerodynamic force acting on the wing in kN
LD=10//Lift-drag ratio
d=1.2//Density of the air in kg/m^3

//calculations
L=(F)/(1.01)^(1/2)//The weight that the plane can carry in kN
Cl=(L*10^3)/(d*A*((C^2)/2))//Coefficient of the lift

//output
printf('(1)The coefficient of lift is %3.3f\n(2)The total weight the palne can carry is %3.1f kN',Cl,L)
