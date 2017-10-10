// SAMPLE PROBLEM 3/16
clc;clear;funcprot(0);
// Given data
mg=6;// lb
k=2;// lb/in
g=32.2;// The acceleration due to gravity in ft/sec^2
h=24;// in
x_1=24/12;// ft
x_2=(((24*sqrt(2))/12)-(24/12));// ft

// Calculation
// The reaction of the rod on the slider is normal to the motion and does no work.
T_1=0;// ft-lb
U_12=0;// ft-lb
// We define the datum to be at the level of position 1, so that the gravitational potential energies are
V_1g=0;// ft-lb
V_2g=-(mg)*(h/12);// ft-lb
V_1e=(1/2)*(k*12)*(x_1)^2;// ft-lb
V_2e=(1/2)*(k*12)*(x_2)^2;// ft-lb
v_2=sqrt(((T_1+(V_1g+V_1e)+U_12)-(V_2g+V_2e))*(2*(g/mg)));// ft/sec
printf("\nThe velocity of the slider as it passes position 2,v_2=%2.1f ft/sec",v_2);
