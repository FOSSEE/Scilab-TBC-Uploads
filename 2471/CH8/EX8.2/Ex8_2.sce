clear ;
clc;
// Example 8.2
printf('Example 8.2\n\n');
printf('Page No. 223\n\n');

// given
V1 = 100;// In Volts
V2 = 50;// In Volts
R1 = 8;// Resistance in ohm
R2 = 5;// Resistance in ohm
R3 = 10;// Resistance in ohm
R4 = 50;// Resistance in ohm
//By refering figure 8.3, and applying kirchoff's current law and kirchoff's voltage law in the given circuit diagram, we get following equations:
// I1 = I2 + I3
//V1 - R1*I1 - V2 - R3*I3 = 0
//V2 - R4*I3 + R3*I3 - R2*I2 = 0
A = [1 -1 -1;8 0 10;0 55 -10];
b = [0;50;50];
x = A\b
printf('The currents in I1 is %.1f A \n',x(1))
printf('The currents in I2 is %.1f A \n',x(2))
printf('The currents in I3 is %.1f A \n ',x(3))
