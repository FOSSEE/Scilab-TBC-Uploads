//Useful torque and efficiency of a shunt motor

clc;
clear;

Po=10.14*735; // 1 HP is 735 W, Power Developed
N=600/60;// Speed in rotations per sec
I=18;
V=500;
Pi=V*I; // Power input

eff=Po*100/Pi;

T=Po/(2*%pi*N);

printf('The Efficiency and the useful torque of the shunt motor are %g percent and %g Nm respectively \n',eff,T)

