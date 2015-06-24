//Finding torque
//Example 15.4(pg 394)
clc
clear
P=10//Power developed by motor in H.P
N=600//Speed of motor in rpm
//1HP=735.5Nw-m/sec=75kgm/sec
a=75
b=735.5
//Torque in kg-m
Tkgm=(P*a*60)/(2*%pi*N)//since P=2*pi*NT/60
//Torque in Nw-m
TNwm=(P*b*60)/(2*%pi*N)//since P=2*pi*NT/60
printf('(i)Torque in kg.meter is %3.2f kg-m \n',Tkgm)
printf('(ii)Torque in Newton.meter is %3.2f Nw-m',TNwm)
