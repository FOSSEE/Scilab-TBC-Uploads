clc
// Intialization of variables
P = 14.7 // psia
Rd = 1/10 // ratio of densities
Rv = 1 // ratio of velocities
Rl = 10 // ratio of lengths 
Dm = 1 // Model drag -- lb
// calculations
Pm = 10*P
D = Dm*(Rl^2)*(Rv^2)*Rd
// Results
printf("the required pressure in the wind tunnel is %.1f psia",Pm)
printf ("the corresponding drag on the prototype is %.f lb",D)
