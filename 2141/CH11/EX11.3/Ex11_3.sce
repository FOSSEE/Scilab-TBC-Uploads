

clc
//initialisation of variables
clear
Pv=0.1217 //lbf/in^2
Pa=14.7-0.12//lbf/in^2
Umga=0.622*(Pv/Pa)//lbf/in^2
ma=139.6//lbm
umga1=0.02135//lbm
//CALCULATIONS
M=ma*(umga1-Umga)//lbm
//RESULTS
printf('The mass of vapor condensed=% f lbm',M)
