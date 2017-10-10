//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
E=14*10^6//lbf/in^2
l=5.0//tonf/in^2
y=2*(1/4)//in
yc=4*3/4//in
n=2*1/2//in
p=1*1/4//in
q=2.25//in
I=55.25//in^4
m=10.56//tonf/in^2
a=(1*(yc^3))
b=6*(y^3)/3
c=(n*p^3)/3//in^4
//CALCULATIONS
INA=(a+b-2*c)*2//in^4
Fa=(l*yc)*(yc*y)/2//tonf/in^2
M=(l*INA/q)//tonf in
//RESULTS
printf('Thesecound moment of area about its neutral axis=% f in^4',INA)
printf('The maximum compressive stress on the section=% f tonf/in^2',Fa)
printf('the bending moment is=% f tonf in',M)
