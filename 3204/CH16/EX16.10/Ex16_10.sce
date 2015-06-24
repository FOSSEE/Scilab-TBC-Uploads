// Initilization of variables
m=5 // kg // mass of the block
theta=30 // degree // inclination of the plane
x=0.5 // m // distance travelled by the block
k=1500 // N/m // stiffness of the spring
mu=0.2 // coefficient of friction between the block and the surface
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the F.B.D of the block
// Applying the principle of work and energy between the positions 1 & 2 and on further simplification we get the generic eq'n for delta as, 750*delta^2-16.03*delta-8.015=0. From this eq'n e have values of a.b & c as,
a=750
b=-16.03
c=-8.015
// Thus the roots of the eq'n are given as,
delta=(-b+(sqrt(b^2-(4*a*c))))/(2*a) // m
// Results
clc
printf('The maximum compression of the spring is %f m \n',delta)
