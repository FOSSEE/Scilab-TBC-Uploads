// Initilization of Variables
v_c=1 // m/s // velocity t the centre
r1=0.1 // m 
r2=0.20 // m
EB=0.1 // m
EA=0.3 // m
ED=sqrt(r1^2+r2^2) // m
// Calculations
// angular velocity is given as,
omega=v_c/r1 // radian/seconds
// Velocit at point B
v_b=omega*EB // m/s 
// Velocity at point A
v_a=omega*EA // m/s
// Velocity at point D
v_d=omega*ED // m/s
// Results
clc
printf('The velocity at point A is %f m/s \n',v_a)
printf('The velocity at point B is %f m/s \n',v_b)
printf('The velocity at point D is %f m/s \n',v_d)
