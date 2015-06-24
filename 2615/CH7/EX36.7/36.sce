clc
//initialisation of variables
v01=54//m/sec
v0=15//m/sec
t=120//sec
s=900//m
vt=0//m
//CALCULATIONS
a=((vt)^2-(v01)^2)/(2*s)//m/sec^2
A=((vt)^2-(v0)^2)/(2*s)//m/sec^2
//RESULTS
printf('the train to stop after the brakes were applied=% f m/sec^2',A)
