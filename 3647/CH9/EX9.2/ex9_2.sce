//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
a=600000//lbf in
b=%pi*(4)^4/32//in^2
q=4000//in^2
//CALCULATIONS
D=sqrt((a)/q)*2/b*10//in
//RESULTS
printf('The shaft diameter=% f in',D)
