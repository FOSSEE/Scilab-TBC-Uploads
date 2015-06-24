// Initilization of variables
v_o=400 // m/s // initial velocity of each gun
r=5000 // m // range of each of the guns
g=9.81 // m/s^2 // acc due to gravity
pi=180 // degree 
// Calculations
// now from eq'n 1
theta_1=(asind((r*g)/(v_o^2)))/(2) // degree // angle at which the 1st gun is fired
// from eq'n 3
theta_2=(pi-(2*theta_1))/2 // degree 
// For 1st & 2nd gun, s is
s=r // m
// For 1st gun 
v_x=v_o*cosd(theta_1) // m/s
// Now the time of flight for 1st gun is t_1, which is given by relation,
t_1=s/(v_x) // seconds
// For 2nd gun
V_x=v_o*cosd(theta_2)
// Now the time of flight for 2nd gun is t_2
t_2=s/(V_x) // seconds
// Let the time difference between the two hits be delta.T. Then,
delta.T=t_2-t_1 // seconds
// Results
clc
printf('The time difference between the two hits is %f seconds \n',delta.T)
