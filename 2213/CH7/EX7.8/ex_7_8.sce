//Example 7.8: Torque
clc;
clear;
close;
//given data :
W=200;// weight of train in tonnes
D=0.9;// diameter in m
G=(1/200)*100;//percentage gradient
r=50;// in N/tonne
gama=4;// gear ratio
eta=0.80;// gearing efficiency
We=1.10*W;// in tonne
Vm=48;// maximum speed in km/h
t1=30;// in sec
alfa=Vm/t1;// in km/h/sec
Ft=(277.8*We*alfa)+(98.1*W*G)+(W*r);// tractive effect required in N
T1=(Ft*D)/(eta*2*gama);// in N-m
T=round(T1/8);
disp(T,"Torque developed by each motor,T(N-m) = ")
