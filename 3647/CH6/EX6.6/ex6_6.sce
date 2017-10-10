//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
d=4//in
p=2//ft
d1=1/2//in
e=13200//tonf/in^2
f=9.51//tonf/in^2
k=0.0114//tonf/in^2
//CALCULATIONS
E=k*f//in tonf
F=(p/(%pi/d*d^2))//tonf/in^2
//RESULTS
printf('the final stress after oscillation has died aways will load/area=% f tonf/in^2',F)
