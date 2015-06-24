// 1 APPENDIX. Ex no 17. Page no 655
// Initilization of variables
W=5000 // N
// Co-ordinates of various points
A=[0,4.5,0]
B=[2.8,0,0]
C=[0,0,-2.4]
D=[-2.6,0,1.8]
// Calculations
// Ref textbook for the values of tenion in the cable AB, AC & AD. The values consist of variables which cannot be defined here
// We re-arrange and define the equations of equilibrium as matrices and solve them as,
P=[0.528,0.0,-0.472;0.0,0.47,-0.327;0.85,0.88,0.818]
Q=[0;0;5000]
X=inv(P)*Q
// Results
clc
printf('Tension in cable AD is %f N \n',X(3))
printf('Tension in cable AB is %f N \n',X(1))
printf('Tension in cable AC is %f N \n',X(2))
// The answer may vary slightly due to decimal point error. Ans for T_AB is incorrect in textbook.
