//Example 5.13
clc;clear;close;
format('v',5);
G=4000;//MW
R=2;//Hz/p.u.MW////Speed regulation constant
H=5;//sec
C=600;//MW//Capacity
theta=40;//degree///Power angle
f=50;//Hz
disp("Part(a)");
T=C/G*cosd(theta);//sec
omega0=sqrt([2*%pi*f*T/H-(f/4/R/H)^2]);//radian/sec
disp(omega0,"Frequency of oscillation(radian/sec)");
disp("Part(b)");
delLB=100;//MW//change in load in area B
delPAB=delLB/2;//MW//because Beta_A=Beta_B
disp(delPAB,"Change in tie line power(MW)");
disp("Part(c)");
format('v',6);
omega0=sqrt([2*%pi*f*T/H]);//radian/sec
disp(omega0,"Frequency of oscillation(radian/sec)");
