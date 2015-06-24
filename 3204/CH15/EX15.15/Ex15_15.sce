// Initilization of variables
P=50 // N // Weight of ball P
Q=50 // N // Weight of ball Q
R=100 // N // Weight of the governing device
l=0.3 // m // length of each side
theta=30 // degree
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D
r=l*sind(theta) // m // Radius of circe
// On solving eqn's 1,2 &3 we get the value of v as,
v=sqrt(((Q+R)*g*r)/((sqrt(3))*Q)) // m/s 
// But the eq'n v=omega*r we get the value of N as,
N=(60*v)/(2*%pi*r) // r.p.m 
// Results
clc
printf('The speed of rotation is %f r.p.m \n',N)
// NOTE: In the text book (A.K. Tayal) this sum is numbered as 'EXAMPLE 15.14' which is incorrect.
