//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
a=1/16//ft/s
h=100//lbf/in^2
w=10//lbf/in^2
q=2//in
b=%pi/4*(3/16)^2//in^2
p=5//inch valu per 12.7
//CALCULATIONS
H=(h*w)/(q*a)//lbf/in^2
F=H*1*a//lbf
A=H/2//lbf/in^2
R=(b)/(F/A)*5.14*4//per inch
F1=A*1*a//lbf
m=(b)/(F1/A)*5.14//per inch
//RESULTS
printf('the force per inch of circumferential seam=% f per in',m)
