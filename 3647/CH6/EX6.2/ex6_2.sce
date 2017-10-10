//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
p1=12000//in
p2=0.0125//lbf/in
x=8//in
w=14300//in
r=0.122//in
//CALCULATIONS
M=(p1/p2)*(x/(%pi/4*1^2))//lbf/in^2
P=0.1*x/100//in
S=w/(%pi/4*1^2)//lbf/in^2
P1=(r*100/x)//percent
//RESULTS
printf('the modulus of elasticity=% f lbf/in^2',M)
printf('non-proportional elongation=% f lbf/in^2',S)
printf('the percentage elongation=% f percent',P1)
