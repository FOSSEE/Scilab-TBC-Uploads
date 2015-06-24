// Initilization of variables
m=0.5 // kg/m // mass of the cable per unit length
g=9.81 // m/s^2
x=30 // m // length AB
y=0.5 // m // dist between C & the horizontal
x_b=15 // m // dist of horizontal from C to B
// Calculations
w=m*g // N/m // weight of the cable per unit length
T_0=(w*x_b^2)/(2*y) // N // From eq'n 1
T_B=sqrt((T_0)^2+(w*x/2)^2) // N // Tension in the cable at point B
W=T_B // N // As pulley is frictionless the tension in the pulley on each side is same,so W=T_B
// Slope of the cable at B,
theta=acosd(T_0/T_B) // degree
// Now length of the cable between C & B is,
S_cb=x_b(1+((2/3)*(y/x_b)^2)) // m
// Now total length of the cable AB is,
S_ab=2*S_cb // m 
// Results
clc
printf('(i) The magnitude of load W is %f N \n',W)
printf('(ii) The angle of the cable with the horizontal at B is %f degree \n',theta)
printf('(iii) The total length of the cable AB is %f m \n',S_ab)
