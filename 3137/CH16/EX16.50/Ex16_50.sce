//Initilization of variables
W=40 //lb
w=10 //rad/s
alpha=2 //rad/s^2
r=2 //in
g=32.2 //ft/s^2
//Calculations
//Using equations of motion
On=(W/g)*(1/6)*w^2 //lb
Ot=(W/g)*(1/6)*alpha
Io=(0.5*(W/g)*0.5^2)*2+((W/g)*(1/6)^2)*2 
//Result
clc
printf('The reaction components are On=%f lb and Ot=%f lb',On,Ot)
