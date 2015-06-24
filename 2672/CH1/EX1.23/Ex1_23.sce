//Example 1_23
clc;
clear;
close;
format('v',6);
//given data :
V1=12;//V
I=2;//A
R1=2;//ohm
R2=4;//ohm
R3=3;//ohm
R4=3;//ohm
R5=5;//ohm
//Converting current source into Voltage source
V2=I*R3;//V//Converted source
//writing KVL equation for the loop
I1=poly(0,'I1');
eqn=-R1*I1+V1-R2*I1-R3*I1-V2;//KVL equation
I1=roots(eqn);//A
VSR=V2+R3*I1;//V
VRA=0;//V//there is no current
//Potential of point A with respect to B
VAB=VSR+VRA;//V
VOC=VAB;//V
Req=(R1+R2)*R3/(R1+R2+R3)+R4;//ohm
//Thevenin equivalent current
I=VOC/(Req+R5);//A
disp(I,"Current flowing through 5 ohm Resistance(A)");
