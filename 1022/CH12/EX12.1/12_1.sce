clc
//initialisation of variables
d= 5 //ft
Tw= 150 //F
T= 50 //F
Pr= 0.72
k= 0.015 //Btu/hr ft F
r= 1.76*10^6 //(F ft^3)^-1
//CALCULATIONS
D= d*(0.42/5)
dt= Tw-T
Gr= r*D^3*dt
z= Gr*Pr
h= 0.59*(z^(0.25)) *(k/D)
disp(h)
q= (2*h*dt*d^2)/144
//RESULTS
printf ('Heat transfer rate from both sides of the plate= %.2f Btu/hr',q)
//The answer given in the textbook has been rounded off at several places.
//Hence it differs from the one in the code.
