//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
q=8000//lbf/in^2
r=9.25//in
G=12*10^6//lbf/in^2
t=1*%pi/180//rad
h=180//lbf ft
//CALCULATIONS
S=((G*%pi*r)/(q*h*2))//in
//RESULTS
printf('the shaft size and maximum shear stress=% f in',S)
