// Initilization of variables
l=1 // m // length of bar AB
v_a=5 // m/s // velocity at A
theta=30 // degree // angle made by the bar with the horizontal
// Calculations
IA=l*sind(theta) // m
IB=l*cosd(theta) // m
IC=0.5 // m // from triangle IAC
// Angular veocity is given as,
omega=v_a/(IA) // radian/second
v_b=omega*IB // m/s
v_c=omega*IC // m/s
// Results
clc
printf('The velocity at point B is %f m/s \n',v_b)
printf('The velocity at point C is %f m/s \n',v_c)
