//Example 3_4 page no:118
clc
//to find Vth and Rth
R1=10//resistance in ohm
R2=5//resistance in ohm
V=50//source voltage
I=25/15//current flowing in the circuit
V1=I*10//voltage across 10 ohm resistor
V2=I*5//voltage across 5 ohm resistor
Vth=V-V1;
disp(Vth,"the thevenin voltage is (in volt)")
Rth=(R1*R2)/(R1+R2);
disp(Rth,"the thevenin resistance is (in ohm)")
