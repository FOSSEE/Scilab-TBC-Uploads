clc
//initialisation of variables
clear
w= 62.4 //lbf/ft^3
g= 32.2 //ft/sec^2
v= 86.5 //ft/sec
d2= 3 //in
d1= 6 //in
dp= 50 //lbf/in^2
//CALCULATIONS
Fb= -((%pi*(w/g)*v^2*(1/d1)^2*(1-(d2/d1)^2)*0.25)-dp*144*(%pi/4)*(1/d2)^2)
//RESULTS
printf ('Load on the bolts = %.f lbf',Fb)
