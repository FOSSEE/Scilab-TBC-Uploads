//Velocity calculation
clc
//initialisation of variables
t=20//ft
t1=30//ft
v=1320//ft/s
p=25//sec
q=15//ft/s
v1=v/t//ft/s
v2=v/t1//ft/s
T=(v2-v1)/p//ft/s^2
V=v2-q*-T//ft/s
V1=-V^2/(2*T)//ft/s
//RESULTS
printf('the velocity time is=% f ft/s',V1)
