clc
clear
//Initialization of variables
p=14.7 //psia
R0=1545 
t=460 +60 //R
//calculations
v=R0*t/(p*144)
//results
printf("Volume = %.1f ft^3/mol",v)
