//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
clear
w=450//lbf/in^2
m=3000//lbf/in^2
g=32.2//lbf/in^2
h=144//in
//CALCULATIONS
M=sqrt(g*m*h/w)//ft/f
//RESULTS
printf('the maximum rim speed of flywheel=% f ft/f',M)
