//Ex 6.7
clc;clear;close;
format('v',6);
N=15;//rps
M=2*1000;//Nm(Torque required)
Loss=8*1000;//W
P=2*%pi*M*N;//W(Power required)
Pa=P-Loss;//W(Power generated in armature)
disp(Pa/1000,"Power generated in armature(kW)");
