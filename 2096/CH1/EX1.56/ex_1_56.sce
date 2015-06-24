//Example 1.56://probability error and readings
clc;
clear;
d=15;//deviation in r.p.m
h=0.04;//precision index
SD=(1/(sqrt(h)));//standard deviation
y=d/SD;//
py=0.3015;//probablity
pr= 2*py;//probablity of an error
r=0.6*20;//no. of readings lie between 1485 to 1515 r.p.m
disp(pr,"probability of an error ±15 rpm is,=")
disp(r,"no. of readings lie between 1485 to 1515 r.p.m")
