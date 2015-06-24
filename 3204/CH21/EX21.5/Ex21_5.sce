// Initilization of Variables
r=0.12 // m // length of the crank
l=0.6 // m // length of the connecting rod
N=300 // r.p.m // angular velocity of the crank
theta=30 // degree // angle made by the crank with the horizontal
// Calculations
// Now let the angle between the connecting rod and the horizontal rod be phi
phi=asind((r*sind(theta))/(l)) // degree
// Now let the angular velocity of crank OA be omega_oa, which is given by eq'n
omega_oa=(2*%pi*N)/(60) // radian/second
// Linear velocity at A is given as,
v_a=r*omega_oa // m/s
// Now using the sine rule linear velocity at B can be given as,
v_b=(v_a*sind(35.7))/(sind(84.3)) // m/s
// Similarly the relative velocity (assume v_ba) is given as,
v_ba=(v_a*sind(60))/(sind(84.3))
// Angular velocity (omega_ab) is given as,
omega_ab=v_ba/l // radian/second
// Results
clc
printf('(a) The angular velocity of the connecting rod is %f radian/second \n',omega_ab)
printf('(b) The velocity of the piston when the crank makes an angle of 30 degree is %f m/s \n',v_b)
