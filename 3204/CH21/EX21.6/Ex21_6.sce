// Initiization of variables
r=1 // m // radius of the cylinder
v_c=20 // m/s // velocity at the centre
// Calculations
// Angular velocity is given as,
omega=v_c/r // radian/second
// Velocity at point D is
v_d=omega*sqrt(2)*r // m/s // from eq'n 1
// Now, the velocity at point E is,
v_e=omega*2*r // m/s 
// Results
clc
printf('The velocity at point D is %f m/s \n',v_d)
printf('The velocity at point E is %f m/s \n',v_e)
