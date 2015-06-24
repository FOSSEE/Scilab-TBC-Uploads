// Initiliztion of variables
P=5000 // N
theta=45 // degree // angle made by Rd & Re with the horizontal
Lab=3 // m
Lac=3 // m
Lbd=2 // m
Lce=2 // m
l=1.5 // m // dist of load P from B
// Calculations (BEAM AB )
// Consider the equilibrium of beams 
// We are using matrix to solve the simultaneous eqn's 
A=[(Lbd*sind(theta)) Lab;(Lce*sind(theta)) -Lac]
B=[(P*l) 0]
C=B*inv(A)
// Calculations (BEAM AC)
Re=C(1) // N (C) // from eq'n 1
Ya=(Re*Lce*sind(theta))/Lac // N // from eq'n 7
Xa=C(1)*cosd(theta) // N // from eq'n 2
Ra=sqrt(Xa^2+Ya^2) // N (C)
Yb=P-Ya-(C(1)*sind(theta)) // N (C) // eq'n 3
Yc=Ya-(Re*sind(theta)) // N (T)
// Results 
clc
printf('(1) The value of axial force (Rd) in bar 2 is %f N \n',C(1))
printf('(2) The value of axial force (Re) in bar 3 is %f N \n',Re)
printf('(3) The value of axial force (Yb) in bar 1 is %f N \n',Yb)
printf('(4) The value of axial force (Yc) in bar 4 is %f N \n',Yc)
// here consider Yc as +ve coz the assumed direction of the force was compressive which is to be reversed
