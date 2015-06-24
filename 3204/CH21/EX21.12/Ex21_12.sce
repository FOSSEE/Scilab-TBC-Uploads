// Initilization of variables
l=0.6 // m 
r=0.12 // m 
theta=30 // degree // angle made by OA with the horizontal
phi=5.7 // degree // from EX 21.5
N=300
// Calculations
// Let the angular velocity of the connecting rod be (omega_ab) which is given from eqn's 1 & 4 as,
omega_oa=(2*%pi*N)/(60) // radian/ second
// Now,in triangle IBO.
IB=(l*cosd(phi)*tand(theta))+(r*sind(theta)) // m
IA=(l*cosd(phi))/(cosd(theta)) // m
// from eq'n 5
v_b=(r*omega_oa*IB)/(IA) // m/s
// From eq'n 6
omega_ab=(r*omega_oa)/(IA) // radian/second
// Results
clc
printf('The velocity at B is %f m/s \n',v_b)
printf('The angular velocity of the connecting rod is %f radian/second \n',omega_ab)
