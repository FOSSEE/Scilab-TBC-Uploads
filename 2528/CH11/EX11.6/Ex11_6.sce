// Chapter 11
// Band pass Filter
// Page.No-424
// Example_11_6
// Given
clear;clc;
Q=25;
fo=4300;            //in Hz
Rd=3*Q-1;           //R damping
printf("\n Rdamping is %.1f Ohm\n",Rd); // Result
W=2*%pi*fo;
printf("\n The  frequency is = %.0f radians per seconds\n",W); // Result
C=1/W;
printf("\n C is %.7f F\n",C); // Result
//practical component value
printf("\n Rdamping and C are %.0f Ohm and %.10f F\n",Rd*5000,C/5000); // Result
//remaining other Resistor are of 5K Ohm
