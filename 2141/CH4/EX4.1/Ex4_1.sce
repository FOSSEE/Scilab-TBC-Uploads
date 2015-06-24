
clc
//initialisation of variables
p=20 //lbf/in^2
v2=3 //ft^3
v1=1 //ft^3
n=1.3
p2=4.80 //ft-lbf
q=144//in^2/ft^2
//CALCULATIONS
W=p*q*(v2-v1)//ft-lbf
P2=p*v1/v2 //lbf/in^2
W1=p*q*1*log(3)//ft-lbf
W2=(p2*q*3-p*q*1)/(1-n)//ft-lbf
//RESULTS
printf('The work =% f ft-lbf',W2)
