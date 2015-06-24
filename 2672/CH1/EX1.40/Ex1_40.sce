//Example 1_40
clc;
clear;
close;
format('v',5);
//given data :
V=24;//V
R1=7;//ohm
R2=7;//ohm
R3=7;//ohm
R4=7;//ohm
R5=8;//ohm
R6=10;//ohm
RAB=(R5*R6/(R5+R6)+R4)*(R2+R3)/(R5*R6/(R5+R6)+R4+R2+R3)+R1;//ohm
I=V/RAB;//A
I2=I*(R2+R3)/(R2+R3+R5*R6/(R5+R6)+R4);//A
VPQ=I2*(R5*R6/(R5+R6));//V
disp(VPQ,"Voltage drop across the 10 ohm resistor(V)");
//Answer in the book is not accurate.
