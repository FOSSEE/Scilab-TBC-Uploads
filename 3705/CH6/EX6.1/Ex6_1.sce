
clear//

//Variable Declaration
wo=400 //loading in lb/ft
E=29*10**6 //Modulus of elasticity in psi
I=285 //Moment of inertia in in^4
S=45.6 //Sectional Modulus in in^3
L=8 //Span in ft

//Calculations
//Part 1
//Part1 is theoretical in nature hence not coded

//Part 2
delta_max=((wo*12**-1)*(L*12)**4)/(8*E*I) //maximum deflection in inches
M_max=(wo*12**-1)*(L*12)**2 //Maximum moment
sigma_max=M_max/(2*S) //Maximum bending stress in psi

//Result
printf("\n M_max")
printf("\n The maximum deflection is %0.4f in",delta_max)
printf("\n The maximum Bending Stress is %0.0f psi",sigma_max)
