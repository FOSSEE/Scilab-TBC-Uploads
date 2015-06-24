L = 3.25 ; // Length of alluminium pipe in m
d = 0.1 ; // Outer diameter of alluminium pipe
P = 100000; // Allowable compressive load in N
n =3 ; // Safety factor for eular buckling
E = 72e09 ; // Modulus of elasticity in Pa
l = 480e06 ; // Proportional limit
Pcr = n*P ; // Critic;e load
t = (0.1 - (55.6e-06)^(1/4) )/2 ; // Required thickness
// Above formula comes from solving following equation
// d2 = d ; d1 = d-2*t ; Pcr = n*P ; I = (%pi/64)*(d2^4-d1^4); Pcr = (2.406*%pi^2*E*I)/((L)^2) ;
tmin = t ;
disp("mm",tmin*1000,"The minimum required thickness of the coloumn is")
// Supplimentry calculatios 
I = (%pi/64)*(d^4-(d-2*t)^4) ; // Moment of inertia
A = (%pi/4)*(d^2-(d-2*t)^2) ; // Area of cross section
r = sqrt(I/A);
s = L/r // slenderness ratio
scr = Pcr/A ; // Criticle stress 
