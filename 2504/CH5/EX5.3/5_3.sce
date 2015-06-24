clc
//initialisation of variables
clear
F1= 237 //lb
dp= 50 //lbf/in^2
D= 6 //in
//CALCULATIONS
F2= dp*144*(%pi/4)*(D/12)^2
Fb= F1-F2
//RESULTS
printf ('Load on the bolts = %.f lbf',Fb)
