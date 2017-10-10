//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
g=2//in
t=0.002//in
l=7500//lbf
w=11000//lbf
p=1/4//in
//CALCULATIONS
W=1/2*l*t//in lbf
P=t*(w/l)//in
S=w/p//lbf/in^2
E=S*g/P//lbf/in^2
R=(1/2)*w*P//in lbf
//RESULTS
printf('The elongation at the elastic limit=% f in',P)
printf('The stress at the elastic limit=% f lbf/in^2',S)
printf('The modulus of elasticity E of the material is=% f lbf/in^2',E)
printf('The resilience and modulus of elasticity=% f in lbf',R)
