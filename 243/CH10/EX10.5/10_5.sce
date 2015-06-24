//Example No. 10_05
//Plane Fitting
//Pg No. 342
clear ; close ; clc ;

x = 1:4
z = 0:3
y = 12:6:30
n = length(x) //Number of data points
m = 3         //Number of unknowns
G = [ ones(1,n) ; x ; z]
H = G'
C = G*H
B = y*H
D = C\B'
disp(C,B)
disp(D)
mprintf('\n The regression plane is \n y = %i + %f*x + %i*z ',D(1),D(2),D(3))