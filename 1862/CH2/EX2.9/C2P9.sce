
clear
 clc
//to find position and acceleration after t=1,2,3,4s have elapsed


// GIVEN::

//linitial velocity due free fall of body
v0y = 0//in m/s
//acceleration due to gravity
g = 9.8//in m/s^2
//time elapsed
t1 = 1.0//in s
t2 = 2.0//in s
t3 = 3.0//in s
t4 = 4.0//in s


// SOLUTION:

//velocity v = -(g*t)
//since initial velocity is zero
v1 = (v0y*t1)-(g*t1)//in m/s
v2 = (v0y*t2)-(g*t2)//in m/s
v3 = (v0y*t3)-(g*t3)//in m/s
v4 = (v0y*t4)-(g*t4)//in m/s
//since body is moving vertically downwards s0,velocity has -ve sign
//distance travelled y = -(0.5*g*t^2)
y1 = (v0y*t1)-0.5*(g*t1^2)//in m
y2 = (v0y*t2)-0.5*(g*t2^2)//in m
y3 = (v0y*t3)-0.5*(g*t3^2)//in m
y4 = (v0y*t4)-0.5*(g*t4^2)//in m
// -ve sign indicates body is travelling in -ve y direction
printf ("\n\n Distance travelled after elapsed time t1 =\n\n %.1f m",y1);
printf ("\n\n Distance travelled after elapsed time t2 =\n\n %.1f m",y2);
printf ("\n\n Distance travelled after elapsed time t3 =\n\n %.1f m",y3);
printf ("\n\n Distance travelled after elapsed time t4 =\n\n %.1f m",y4);
printf ("\n\n Velocity after elapsed time t1 =\n\n %.1f m/s",v1);
printf ("\n\n Velocity after elapsed time t2 =\n\n %.1f m/s",v2);
printf ("\n\n Velocity after elapsed time t3 =\n\n %.1f m/s",v3);
printf ("\n\n Velocity after elapsed time t4 =\n\n %.1f m/s",v4);
