clc
//Example 1.6
//Calculate the acceleration in ft/min^2
m=10//lbm
F=3.5//lbf
//1 lbf.s^2 = 32.2 lbm.ft
//1 min = 60 sec
a=(F/m)*32.2*60^2//ft/min^2
printf("The acceleration provided is %f ft/min^2",a);