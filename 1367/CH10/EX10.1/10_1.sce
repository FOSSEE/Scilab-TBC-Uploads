//Prove Two component system cannot have more than 4 phases in an equilibrium   
//Exa:10.1
close;
clc;
clear;
c=2;//for 2 component system
disp("D=C-P+2");
disp("Total no. of variables = P*(C-1)+2");
p=4;
d=c-p+2;//degree of freedom
t=p*(c-1)+2;//no. of total variables
disp(d,"Degree of freedom = ");
disp(p,"when p = ");
disp("Two component system cannot have more than 4 phases in an equilibrium");