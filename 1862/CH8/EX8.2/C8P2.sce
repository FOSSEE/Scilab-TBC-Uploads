clear
clc
//to find angular posion at t = 2 seconds
//to find instantaneous angular acceleration of reference line at t = 0.5 seconds 
// GIVEN:

//refer to the figure 8-1 from page no. 159
//in angular velocity function w = A*t + B*t^2 values of conatanta
A = 6.2//in rad/s^2
B = 8.7//in red/s^2
//for calculatiing angular position time interval
t1 = 2//in seconds
//for calculatiing angular acceleration time interval
t2 = 0.50//in seconds
//initial condition
//reference line initially is at fi = 0 when t = 0

// SOLUTION:
//using kinematic equation of motion for rotational motion
//angular posion at t = 2 seconds
fi = ((1/2)*A*t1^2) + ((1/3)*B*t1^3)//in rad
//angular instantaneous acceleration at t = 0.5 seconds
a = A + (2*B*t2)//in rad/s^2

printf ("\n\n Angular posion at t = 2 seconds fi = \n\n %.1f rad",fi);
printf ("\n\n Angular instantaneous acceleration at t = 0.5 seconds a = \n\n %.1f rav/s^2",a);
