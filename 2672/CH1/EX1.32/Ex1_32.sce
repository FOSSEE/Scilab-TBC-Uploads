//Example 1_32
clc;
clear;
close;
format('v',5);
//given data :
V=12;//V
R1=2;//ohm
R2=2;//ohm
R3=2;//ohm
R4=2;//ohm
R5=2;//ohm
//calculating Open circuit voltage : 
I=V/(R1+R2+R3);//V
VCD=I*R3;//V
VAB=VCD;//V//Open circuit voltage
Req=(R1+R2)*R3/(R1+R2+R3)+R4+R5;//ohm
RL=Req;//ohm//For maximum Power transfer
disp(RL,"For maximum Power transfer, RL(ohm)");
PLmax=VAB^2/4/RL;//W
disp(PLmax,"Value of maximum Power(W)");
