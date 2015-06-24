// 1 APPENDIX. Ex no 19. Page no 657
// Initilization of variables
F=2 // kN
W=1 // kN
// Co-ordinates as matrices
A=[0,0,0]
C=[0,0,1.2]
B=[0,0,2.5]
D=[-1,1,0]
E=[1,1,0]
F=[0,0,1]
G=[0,0,2]
// Force vector
f=[0,-2,0]
// Weight vector
w=[0,-1,0]
// Calculations
// we have 5 unknowns: A_x,A_y,A_z,T_FE & T_GD
// we define and solve eqn's 1,2,3,4&5 using matrix as,
P=[1,0,0,0.58,-0.41;0,1,0,0.58,0.41;0,0,1,-0.58,-0.82;0,0,0,0.58,0.82;0,0,0,0.58,-0.82]
Q=[0;3;0;6.25;0]

X=inv(P)*Q

// Results
clc
printf('The components of reaction at A are: A_x=%f kN , A_y=%f kN and A_z=%f kN \n',X(1),X(2),X(3))
printf('The tensions in the cable are: T_FE=%f kN and T_GD=%f kN \n',X(4),X(5))
// The solution in the textbook is incorrect and yeilds singularity in matrix calculation.
