clc
//initialisation of variables
clear
w= 62.3 //lbf/ft^3
d= 0.375 //in
ro= 0.75 //ft
l= 1.25 //ft
b= 120 //degrees
do= 0.25 //in
p= 750 //lbf/in^2
g= 32.1 //ft/sec^2
f= 0.03
f1= 0.9
f2= 0.3
w1= 60 //rad/sec
//CALCULATIONS
Q= sqrt(((p/w)+((60*ro)^2/(2*g))+do)*%pi^2*g*(d/12)^4/((d/do)^4-1+(l*f/(d/12))+f1+f2))*0.353
Vwo= w1*ro+(4*Q/(%pi*(do/12)^2))*cosd(b)
C= w*Q*Vwo*ro/g
//RESULTS
printf ('Flow Rate = %.4f ft^3/sec',Q) 
printf ('\n Vwo = %.2f ft/sec',Vwo) 
printf ('\n Driving Torque = %.3f lbf ft',C) 
