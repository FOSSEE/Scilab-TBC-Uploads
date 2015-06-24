//Initilisation of variables
W=150 //lb
v=20 //ft/s
A=0.2 //in^2
t=60 //s
g=32.2 //ft/s^2
//Calculations
//Mass flow
m=(A/12^2)*v*(62.4/g)
//Force
F=m*(0-v) //lb
//At t=60s the tank holds
Ww=(A/12^2)*v*t*62.4 //lb
//Total reading on scale
S=-F+W+Ww //lb
//Result
clc
printf('The scale reading is %f lb',S)
