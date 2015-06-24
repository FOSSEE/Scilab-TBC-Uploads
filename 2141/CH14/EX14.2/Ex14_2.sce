
clc
//initialisation of variables
v=5 //ft/sec
vol=1//lbm/sec
Vy=40//ft/sec
m=1//lbm/sec
g=32.17//lbf-ft/lbf-sec^2
//CALCULATIONS
Fx=v*vol/g //lbf
Fy=Vy*-m/g//lbf
//RESULTS
printf('the force is in the opposite directions to =%f lbf',Fy)
