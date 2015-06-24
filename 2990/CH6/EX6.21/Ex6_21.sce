
clc; funcprot(0);
// Initialization of Variable
f=152.4;//focal length in mm
L=120;//length in m
x1=40.0;//distance in mm
x2=-90.0;//distance in mm
//calculation
X=f*L/(x1-x2);
disp(X,"the coordinates of D in m is X=")
Y=L*x1/(x1-x2);
disp(Y,"the coordinates of D in m is Y=")
h=X*(30-20)/f;
disp(h,"elevation of D in m")
clear()
