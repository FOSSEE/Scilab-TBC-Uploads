// SAMPLE PROBLEM 4/5
clc;clear;funcprot(0);
// Given data
g=32.2;// The acceleration due to gravity in ft/sec^2
n_12=80;// rev/min
n_34=100;// rev/min
W_a=32.2;// lb
W_b=3.22;// lb
n=4;// Number of balls
vbar=4;// m/s
r_12=18/12;// ft
r_34=12/12;// ft

// Calculation
// (a)Kinetic energy
v_rel12=r_12*((2*%pi*n_12)/60);// ft/sec
v_rel34=r_34*((2*%pi*n_34)/60);// ft/sec
ke=(1/2)*((W_a/g)+(n*(W_b/g)))*(vbar)^2;// ft-lb
ke_r=(2*[(1/2)*(W_b/g)*v_rel12^2])+(2*[(1/2)*(W_b/g)*v_rel34^2]);// The rotational part of the kinetic energy in ft-lb
T=ke+ke_r;// The total kinetic energy in ft-lb
// (b)Linear momentum
G=((W_a/g)+(n*(W_b/g)))*vbar;// ft-lb-sec
// (c)Angular momentum about O.
H_O=(2*[(W_b/g)*r_12*v_rel12])-(2*[(W_b/g)*r_34*v_rel34]);// lb-sec
printf("\n(a)The kinetic energy,T=%2.0f ft-lb \n(b)The magnitude of the linear momentum,G=%1.1f lb-sec \n(c)The magnitude of the angular momentum about point O,H_O=%1.3f ft-lb-sec",T,G,H_O);
