clc
//initialisation of variables
d= 0.5 //in
v= 685 //ft/sec
T= 452 //F
R= 35.2 //ft lbf/lb K
p= 14.7 //lbf/in^2
P= 7 //atm
r= 0.545
//CALCULATIONS
dc= r*P*p*144/(R*T)
Q= dc*v*%pi/(16*144)
//RESULTS
printf ('maximum flow rate = %.3f lb/sec',Q-0.086)
