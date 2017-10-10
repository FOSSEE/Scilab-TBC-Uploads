// SAMPLE PROBLEM 5/9
clc;funcprot(0);
// Given data
n=1500;// rev/min
theta=60;// degree
r=5;// inch
d_AG=10;// The distance from A to G in inch
d_GB=4;// The distance from G to B in inch
d_AB=14;// The distance from A to B in inch

// Calculation
v_B=(r/12)*((2*%pi*n)/60);// ft/sec
// From the law of sines,
beta=asind(r/(d_AB/sind(theta)));// degree
theta_3=30;// degree
theta_1=90-beta;// degree
theta_2=180-theta_3-theta_1;// degree
v_A=(v_B*sind(theta_2))/sind(theta_1);// ft/sec
v_AB=(v_B*sind(theta_3))/sind(theta_1);// ft/sec
ABbar=d_AB/12;// ft
omega_AB=v_AB/ABbar;// rad/sec
GBbar=d_GB/12;// ft
v_GB=(GBbar/ABbar)*v_AB;// ft/sec
// From velocity diagram
v_G=64.1;// ft/sec
printf("\nThe velocity of the piston A,v_A=%2.1f ft/sec \nThe velocity of point G on the connecting rod,v_G=%2.1f ft/sec \nThe angular velocity of the connecting rod,omega_AB=%2.1f rad/sec",v_A,v_G,omega_AB);

