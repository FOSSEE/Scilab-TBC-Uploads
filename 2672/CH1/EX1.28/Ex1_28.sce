//Example 1_28
clc;
clear;
close;
format('v',5);
//given data :
V1=15;//V
V2=4;//V
R1=4;//ohm
R2=3;//ohm
R3=2;//ohm
R4=5;//ohm
I1=6;//A
RL=R4;//ohm
//solution
Req=R1*R3/(R1+R3)+R2;//ohm
//Converting current source into Voltage source
V2=I1*R3;//V//Converted source
//writing KVL equation for the loop
I=poly(0,'I');
eqn=V1-R1*I-R3*I-V2;//KVL equation
I=roots(eqn);//A
//Potential at point A with respect to B
VAB=V2+R3*I;//V
//Thevenin equivalent current
I=VAB/(Req+RL);//A
disp(I,"Current through 5 ohm resistor(A)");
