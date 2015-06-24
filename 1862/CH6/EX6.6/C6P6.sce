
clear
 clc
//to find final velocity of combination of 1st and 2nd glider

// GIVEN::
//refer to problem 6-5 from page no. 127

//we consider +ve x direction as initial motion of first glider
//mass of first glider
m1 = 1.25//in kg
//initial velocity of first glider in +ve x direction
v1ix = 3.62//in m/s 
//mass of second glider
m2 = 2.30//in kg
//initial velocity of second glider in +ve x direction
//since 2nd glider is initially at rest
v2ix = 0//in m/s


// SOLUTION:

//applying conservation of momentum
//final velocitiy of second glider in +ve x direction 
vfx = (m1*v1ix)/(m1 + m2)//in m/s
//change in momentums for glider having mass m1
delta_p1x = m1*(vfx-v1ix)//in Kg.m/s
//change in momentums for glider having mass m2
delta_p2x = m2*(vfx-v2ix)//in Kg.m/s

printf ("\n\n Final velocity of combination of 1st and 2nd glider vfx = \n\n %.2f m/s",vfx);
printf ("\n\n Change in momentums for glider having mass m1 delta_p1x = \n\n %.2f Kg.m/s",delta_p1x);
printf ("\n\n Change in momentums for glider having mass m2 delta_p2x = \n\n %.2f Kg.m/s",delta_p2x);
