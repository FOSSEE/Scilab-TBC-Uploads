//clear//
//Caption:M-ARY Signaling
//Example3.2:M-ARY SIGNALING
//Signal constellation and Representation of dibits
clear;
close;
clc;
a =1;  //amplitude =1
T =1; //Symbol duration in seconds
//Four  message points
Si1 = [(-3/2)*a*sqrt(T),(-1/2)*a*sqrt(T),(3/2)*a*sqrt(T),(1/2)*a*sqrt(T)];
a =gca();
a.data_bounds = [-2,-0.5;2,0.5]
plot2d(Si1,[0,0,0,0],-10)
xlabel('phi1(t)')
title('Figure 3.8 (a) Signal constellation')
xgrid(1)
disp('Figure 3.8 (b).Representation of transmitted dibits')
disp('Loc. of meg.point| (-3/2)asqrt(T)|(-1/2)asqrt(T)|(3/2)asqrt(T)|(1/2)asqrt(T)')
disp('________________________________________________________________________________')
disp('Transmitted dibit|         00    |      01      |   11        |   10')
disp('')
disp('')
disp('Figure 3.8 (c). Decision intervals for received dibits')
disp('Received dibit     |     00          |      01       |   11          |   10')
disp('________________________________________________________________________________')
disp('Interval on phi1(t)| x1 < -a.sqrt(T) |-a.sqrt(T)<x1<0| 0<x1<a.sqrt(T) | a.sqrt(T)<x1')
 
