clc
clear
//Initialization of variables
kp=1.09
feed=[ 1 5 0 0 0 ]
//calculations
x=poly(0,"x")
vec=roots(kp/4^4 /4 *(1-x)*(5-2*x)^2 *(6+2*x)^2 -x^5)
x=vec(5)
pro=[1-x 5-2*x x 4*x 0]
//results
disp("Equlibrium composition (moles)= ")
format('v',6);pro
disp(pro)
