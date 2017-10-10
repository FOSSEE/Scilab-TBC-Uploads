//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
p=144*60//lbf/ft^2
A1=1/4*%pi*(1/2)^2//ft^2
A2=1/4*%pi*(1/4)^2//ft^2
w=5//ft/s
U1=1/A1//ft/s
U2=1/A2//ft/s
g=32.2//ft/s
P=(U1^2/(2*g))+(p/(2*g))
P1=(3+U2^2/(62.4))+(144/(62.4))
//CALCULATIONS
Pb=(P/P1)*w//lbf/in^2
//RESULTS
printf('the bernouli s equation=% f lbf/in^2',Pb)
