
clear
 clc
//to find timw elapsed
//to find acceleration
//after apply brakes with constant acceleration time required to stop vehicle
//additionl distance covered after vehicle has stopped

// GIVEN::

//linitial velocity at t=0
v0x = 23.6//in m/s
//final velocity 
vx = 12.5//in m/s
//distance travelled
delta_x = 105//in m
//velocity after vehicle has stopped
vxf = 0//in m/s

// SOLUTION:

//average velocity
//applying kinematic equations
vav_x = (v0x + vx)/2//in m/s
//time elapsed
time = delta_x/vav_x//in seconds
//acceleration
//applying kinematic equations
ax = (vx-v0x)/time//in m/s^2
//time required to stop vehicle
//applying kinematic equations
t = (vxf-v0x)/ax//in s
//total distance covered by vehicle
//applying kinematic equations
x = (v0x*t)+(0.5*ax*t^2)//in m/s^2
//additional distance travelled by vehicle
x_final = x - delta_x//in m
x = round(x)
x_final = round(x_final)
time = nearfloat("pred",5.81)

printf ("\n\n Average velocity vav_x =\n\n %.2f m/s",vav_x)
printf ("\n\n Time elapsed time =\n\n %.2f s",time);
printf ("\n\n Acceleration of vehicle ax =\n\n %.2f m/s^2",ax);
printf ("\n\n After apply brakes with constant acceleration time required to stop vehicle t =\n\n %.1f s",t);
printf ("\n\n Total distance covered by vehicle x =\n\n %3i m",x);
printf ("\n\n Additionl distance covered after vehicle has stopped x_final =\n\n %1i m",x_final);
