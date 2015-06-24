// Chapter 11
// Band pass Filter
// Page.No-427
// Example_11_7
// Given
clear;clc;
Q=30;
fo=60;            //in Hz
Rd=3*Q-1;           //R damping
printf("\n Rdamping is %.1f Ohm\n",Rd); // Result
W=2*%pi*fo;
printf("\n The  frequency is = %.0f radians per seconds\n",W); // Result
C=1/W;
printf("\n C is %.5f F\n",C); // Result
