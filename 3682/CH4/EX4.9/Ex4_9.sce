// Exa 4.9

clc;
clear;

// Given data

// To generate a sinusoidal signal 10 sin 3t.

// Solution

printf('Let us first obtain a differential equation whose solution is 10 sin 3t.\n');
printf(' Let x(t) = 10 sin 3t ------eq(1)\n');
printf(' The first derivative of this i.e. dx(t) = 30 cos 3t ----eq(2)\n');
printf(' The second derivative of this i.e. d2x(t) = -90 sin 3t = -9*x(t) \n');  
printf('\n Therefore, required differential equation is d2x(t)+9*x(t)=0. \n\n');

printf(' The initial condition is obtained by putting t=0 in eq(1&2), \n x(0)=0 and dx(0) = 30. \n' );
printf(' Assuming that d2x(t) is available, x(t) can be obtained by integrating x twice.\n The complete setup is shown in Fig. 4.31-Simulation of 10 sin 3t.\n');
