clear
clc
//to find linesr or tangential speed of a point on a rim 
//to find tangential acceleration of a point on a rim 
//to find radial acceleration of a point on a rim

// GIVEN:
//refer to problem 8-3 from page no. 165
//refer to the figure 8-7 from page no. 165
//radius of grindstone for first case
r1 = 0.24//in meters
//radius of grindstone for second case
r2 = 0.12//in meters
//initial angular speed of grindstone
w = 8.6//in rad/s
//constant angular acceleration of grindstone
a = 3.2//in rad/s^2
//time interval 
t = 2.7//in seconds

// SOLUTION:
//using kinematic equation of motion for rotational motion

//for r1 = 0.24m
//linesr or tangential speed of a point on a rim 
vT = w*r1//in m/s
//tangential acceleration of a point on a rim 
aT = a*r1//in m/s^2 
//radial acceleration of a point on a rim
aR = w^2*r1//in m/s^2

//for r1 = 0.12m
//linesr or tangential speed of a point on a rim 
v_T = w*r2//in m/s
//tangential acceleration of a point on a rim 
a_T = a*r2//in m/s^2 
//radial acceleration of a point on a rim
a_R = w^2*r2//in m/s^2
aR = round(aR)

printf ("\n\n Linesr or tangential speed of a point on a rim for r1 = 0.24m vT = \n\n %.1f m/s",vT);
printf ("\n\n Tangential acceleration of a point on a rim for r1 = 0.24m aT = \n\n %.2f m/s^2",aT);
printf ("\n\n Radial acceleration of a point on a rim for r1 = 0.24m aR = \n\n %2i m/s^2",aR);
printf ("\n\n Linesr or tangential speed of a point on a rim for r1 v_T = 0.12m v_T = \n\n %.1f m/s",v_T);
printf ("\n\n Tangential acceleration of a point on a rim for r1 = 0.12m a_T = \n\n %.2f m/s^2",a_T);
printf ("\n\n Radial acceleration of a point on a rim for r1 = 0.12m a_R = \n\n %.1f m/s^2",a_R);
