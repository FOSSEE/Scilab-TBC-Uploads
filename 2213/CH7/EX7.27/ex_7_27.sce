//Example 7.27: Torque and minimum weight
clc;
clear;
close;
//given data :
N=4;// number of motor
W=250;//in tonne
D=.95;// diameter in m
G=1;// percentage gradient
r=40;// in N/tonne
eta=95/100;// gear efficiency
gama=3;// gear ratio
We=1.1*W;
Vm=40;// kmph
t1=20;// in seconds
alfa=Vm/t1;
Ft=((277.8*We*alfa)+(98.1*W*G)+(W*r));
T=(Ft*D)/(eta*2*gama);
Td=round(T/N);
disp(Td,"Torque developed by each motor,Td(Nm) = ")
mu=0.25;// adhesive coefficient
WL=(Ft/(9.81*1000))/mu;
Dw=round(WL/.75);
disp(Dw,"Dead weight of locomotive,(tonnes) = ")
