// Example 1.7.2  page 1.14
// To calculate the critical angel

clc;
clear;

n1= 1.50;   // RI of glass..
n2 = 1;     // RI of air...
// According to Snell's law...
// n1*sin(phi1)= n2*sin(phi2);

// From definition of critical angel phi2 = 90 degrees and phi1 will be critical angel
phiC=asind((n2/n1)*sin(%pi/2));
printf('The Critical angel is  %.2f degrees',phiC);
