clc
//initialisation of variables
n=240//rpm
d=600*0.001//mm
M=6//m
a=180//min
h=75//m
//CALCULATIONS
U=M*n//deg/sec
Mt=(a*h*M)/(%pi*U)//kg-m
P=(2*Mt)/d//kg
//RESULTS
printf('the turning moment trough=% f kg',P)
