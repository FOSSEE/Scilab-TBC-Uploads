//Initilization of variables
d=6/12 //ft
l=8/12 //ft
l_c=3.2 //in
y=1.82 //in^2
//Calculations
V=(1/4)*%pi*d^2*l //ft^3
//One horizontal inch 
h_i=V/l_c //ft^3
//One vertical inch
v_i=100*144 //lb/ft^2
//Then 1.82 in^2 represents
x=y*v_i*h_i //ft-lb
//Result
clc
printf('The work capacity is %f ft-lb',x)
