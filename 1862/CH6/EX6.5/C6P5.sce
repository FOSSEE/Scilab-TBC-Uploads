
clear
 clc
//to find velocity of second glider after collision

// GIVEN::

//we consider +ve x direction as initial motion of first glider
//mass of first glider
m1 = 1.25//in kg
//initial velocity of first glider in +ve x direction
v1ix = 3.62//in m/s 
//mass of second glider
m2 = 2.30//in kg
//final velocity of first glider in +ve x direction
// - sign since after collision first glider is moving in -ve x direction
v1fx = -1.07//in m/s 
//initial velocity of second glider in +ve x direction
//since 2nd glider is initially at rest
v2ix = 0//in m/s

// SOLUTION:

//applying conservation of momentum
//final velocitiy of second glider in +ve x direction 
v2fx = (m1/m2)*(v1ix-v1fx)//in m/s
//change in momentums for glider having mass m1
delta_p1x = m1*(v1fx-v1ix)//in Kg.m/s
//change in momentums for glider having mass m2
delta_p2x = m2*(v2fx-v2ix)//in Kg.m/s

printf ("\n\n Velocitiy of second glider in +ve x direction after collision v2fx = \n\n %.2f m/s",v2fx);
printf ("\n\n Change in momentums for glider having mass m1 delta_p1x = \n\n %.2f Kg.m/s",delta_p1x);
printf ("\n\n Change in momentums for glider having mass m2 delta_p2x = \n\n %.2f Kg.m/s",delta_p2x);
