clc
clear
//input
l1=82.3//balance length  with switch open
l2=75.8//balance length with switch closed
R=9//resistance
//calculation
r=(R*l1/l2)-R//internal resistance
//output
printf("the internal resistence is %3.3f ohm",r)
