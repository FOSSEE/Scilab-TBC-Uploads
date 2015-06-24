//Example 1_24
clc;
clear;
close;
format('v',6);
//given data :
V1=6;//V
V2=15;//V
R1=6;//ohm
R2=3;//ohm
R3=4;//ohm
R4=6;//ohm
//writing KVL equation for the loop
I=poly(0,'I');
eqn=V2-R2*I-R1*I-V1;//KVL equation
I=roots(eqn);//A
VCD=V2-R2*I;//V
//Potential of point A with respect to B
VAB=VCD;//V
VOC=VAB;//V
Req=R1*R2/(R1+R2)+R3;//ohm
//Thevenin equivalent current
I=VOC/(Req+R4);//A
disp(I,"Current flowing through terminal AB(A)");
