//Example 1_13
clc;
clear;
close;
format('v',5);
//given data :
V=20;//V
I=2;//V
R1=2;R2=4;R3=8;//ohm
//Considering current source only, making Voltage source short circuit
I1=I*R1/(R1+R3);//A//through B to A
//Considering Voltage source only, making current source open circuit
I2=V/(R1+R3);//A//through A to B
IAB=I2-I1;//A//total current through R2=5 ohm
disp(IAB,"Current through 8ohm resistor(A) : ");
