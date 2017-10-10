//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
clear
E=13400//tonf/in^2
E1=5600//tonf/in^2
h=7//tonf/in^2
h1=3.5//tonf/in^2
w=1.5//ij
l=5//tonf
A=%pi/4*1^2//in^2
A1=%pi/4*(w^2-1^2)//in^2
s=1.91//tonf
t=0.787//in
pg=1.72//tonf
//CALCULATIONS\
m=h*t//tonf
p=m/s//tonf
g=p/A1//tonf/in^2
m1=m+p//tonf
S=pg/A1//tonf/in^2
Ps=pg*s//tonf
S1=Ps/t//tonf/in^2
//RESULTS
printf('the stress in the steel=% f tonf/in^2',S1)
