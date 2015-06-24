// Initilization of variables
v_c=20 // km/hr // speed at which the cyclist is riding to west
theta_1=45 // degree // angle made by rain with the cyclist when he rides at 20 km/hr
V_c=12 // km/hr // changed speed
theta_2=30 // degree // changed angle when the cyclist rides at 12 km/hr
// Calculations
// Solving eq'ns 1 & 2 simultaneously to get the values of components(v_R_x & v_R_y) of absolute velocity v_R. We use matrix to solve eqn's 1 & 2.
A=[1 1;1 0.577]
B=[20;12]
C=inv(A)*B // km/hr
// The X component of relative velocity (v_R_x) is C(1)
// The Y component of relative velocity (v_R_y) is C(2)
// Calculations
// Relative velocity (v_R) is given as,
v_R=sqrt((C(1))^2+(C(2))^2) // km/hr
// And the direction of absolute velocity of rain is theta, is given as
theta=atand(C(2)/C(1)) // degree
// Results 
clc
printf('The magnitude of absolute velocity is %f km/hr \n',v_R)
printf('The direction of absolute velocity is %f degree \n',theta)
