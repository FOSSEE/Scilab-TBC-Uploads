//Example 1_13 page no:16
clc
//apply kirchoff's law to the given circuit
I=50//current in ampere
R1=2;//resistance in ohm
R2=1;//resistance in ohm
R3=5;//resistance in ohm
V=I/(1/2+1/1+1/5)
I1=V/R1;
disp(I1,"Current flowing in 2 ohm resistor is (in ampere)")
I2=V/R2;
disp(I2,"Current flowing in 1 ohm resistor is (in ampere)")
I3=V/R3;
disp(I3,"Current flowing in 5 ohm resistor is (in ampere)")
