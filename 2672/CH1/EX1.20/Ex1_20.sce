//Example 1_20
clc;
clear;
close;
format('v',5);
//given data :
V=20;//V
I=2;//A
V3=6;//V
R1=2;//ohm
R2=4;//ohm
R3=8;//ohm
//Considering current source only, Make Voltage source short circuit
I1dash=I*R1/(R1+R3);//A
//Considering Voltage source only, Make Current source opent circuit
I1dash2=V/(R1+R3);//A
I=I1dash2-I1dash;//A
disp(I,"Current through 8 ohm resistor from A to B(A)");
