clc
// initialization of variables
T=100 // torque of shaft in N.m
N=3000 // rotation speed in rpm
omega=(N*2*%pi/60) // angular velocity in rad/sec
// calculation of power
Wdot=(T*omega); // power is work done per unit time
printf("Power transmitted is %.1f hp",Wdot/746)  // divided by 746 to convert W into hp
//answer is approximated in textbook
