//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
clear
E1=30*10^6//lbf/in^2
E2=15*10^6//lbf/in^2
alf=6.4*10^-6//degF-1
alf1=9.5*10^-6//degF-1
t=170//deg
t1=50//deg
w=5//tonf
ec=0.000248//lbf/in^2
es=0.000124//lbf/in^2
h=2240//in
//CALCULATIONS
e=(alf1-alf)*(t-t1)//in
Ec=E2*ec//lbf/in^2
Es=E1*es//lbf/in^2
F=E1/E2//fc
S=w*h/(2*1+1)//lbf/in^2
S1=S*2//lbf/in^2
R=-Es+S//lbf/in^2
R1=Es+S1//lbf/in^2
//RESULTS
printf('The final stress in the steel and applied to the compound =% f lbf/in^2',R1)
