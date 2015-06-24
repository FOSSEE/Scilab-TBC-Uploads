// Initilization of variables
l=200 // m // length of the cable
m=1000 // kg // mass of the cable
S=50 // m // sag in the cable
s=l/2 // m
g=9.81 // m/s^2
// Calculations
w=(m*g)/l // N/m // mass per unit length of the cable
// Substuting the values s=l/2 & y=c+S in eq'n 1 to get the value of c,
c=7500/100 // m 
Tmax=sqrt((w*c)^2+(w*s)^2) // N // Maximum Tension
// To determine the span (2*x) let us use the eq'n of catenary, y=c*cosh(x/c), where y=c+50. On simplyfying we get y/c=cosh(x/c), here let y/c=A
y=c+50
A=y/c 
x=c*(acosh(A)) // m 
L=2*x // m // where L= span
// Results
clc
printf('The horizontal distance between the supports and the max Tension (L) is %f m \n',L)
