//Example 2_7
clc;
clear;close;

//Given data: 
P=10;//kW
Idc=50;//A
SF=2;//safety factor

//Solution :
Vdc=P*1000/Idc;//V
alfa=0;//degree
Vm=Vdc*%pi/(2*cosd(alfa))+1.7;//V
PIV=2*Vm;//V
Vthy=SF*PIV;//V
disp(Vthy,"(a) Voltage rating of thristor in V");
PIV=Vm;//V//for bridge rectifier
Vthy=SF*PIV;//V
disp(Vthy,"(b) Voltage rating of thristor in V");
///Answer in the book is wrong.
