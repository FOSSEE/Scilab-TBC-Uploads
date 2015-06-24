// Example 1.5: min and max value of led current
clc, clear
v1=1.5; // in volts
v2=2.3; // in volts
vs=10; // in volts
r1=470; // in ohm
I1=(vs-v1)/r1; // in ampere
I2=(vs-v2)/r1; // in ampere
disp(I1,"maximum current in ampere (A) = ")
disp(I2,"minimum current in ampere (A) = ")
