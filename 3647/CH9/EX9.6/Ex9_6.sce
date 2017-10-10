//Solutions to Problems In applied mechanics
//A N Gobby
clear;

clc
//initialisation of variables
d=30//in
w=50//lbf ft
d1=10//in
G=12*10^6//lbf/in^2
T1=50//lbf ft
T2=16.7//lbf ft
J=4810//lbf ft
TA=w/3//lbf ft
Tab=w-TA//lbf ft
//CALCULATIONS
Ta=Tab-TA//lbf ft
T3=Tab-TA //lbf ft
Qmax=T3*G*(3/8)/(%pi/32)*(3/4)^4//lbf/in^2
M=(T3*12*d1)/(%pi/4*(3/4)^4*G)*(180/%pi)//degree
//RESULTS
printf('The couples required to hold the ends=% f lbf ft',Ta)
printf('The magnitude of the greatest shear stress set up in the shaft=% f lbf/in^2',Qmax)
printf('the angular rotation in degree of the section=% f degree',M)