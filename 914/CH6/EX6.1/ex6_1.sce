clc;
warning("off");
printf("\n\n example6.1 - pg200");
// given
q=50;  //[gal/min] - volumetric flow rate
d=2.067/12;  //[ft] - diameter
A=0.02330;  //[ft^2] - flow area
p=0.99568*62.43;  //[lb/ft^3] - density of water at 86degF
mu=0.8007*6.72*10^-4;  //[lb/ft*sec] - viscosity of water at 86degF
u=q/(60*7.48*A);
// using the formula Nre=d*u*p/mu;
Nre=(d*u*p)/mu;
disp(Nre,"Nre=");
printf("\n Hence the flow is turbulent.Note also that Nre is dimensionless");
