clc
//initialisation of variables
q=10//ft
a=4*%pi//ft
p1=q+2//ft
p2=62.5*a*p1//lbf
s=%pi/64*(4)^2+a*(p1)^2//ft^4
//CALCULATIONS
m=a*p1//ft^3
P=s/m//ft
F=p2*(P-q)/4//lbf
H=p2-F//lbf
//RESULTS
printf('the total hinge reaction=% f lbf',H)
