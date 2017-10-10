//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
d=3//in
v=40//ft/s
a=3000//ft/s^2
p=5.31//in
//CALCULATIONS
U=sqrt(a/(d/12))//sec^-1
E=(U*60/(2*%pi))//rev/min
P=2/U//sec
W=U*(p/12)//ft/s
M=U^2*(p/12)//ft/s^2
//RESULTS
printf('the velocity of acceleration against time during one complete=% f ft/s^2',M)
