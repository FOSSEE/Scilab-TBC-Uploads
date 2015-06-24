clc
//initialisation of variables
L1= 8 //in
B1= 1 //in
L2= 1 //in
B2= 6 //in
L3= 8 //in
B3= 1 //in
//CALCULATIONS
Iy= (B1*L1^3/12)+(B2*L2^3/12)+(B3*L3^3/12)
Ix= (L1*B1^3/12)+L1*B1*((B2/2)+(B1/2))^2+(L2*B2^3/12)+(L3*B3^3/12)+L3*B3*((B2/2)+(B3/2))^2
//RESULTS
printf ('Ix= %.2f in^4',Ix)
printf (' \n Iy=%.2f in^4',Iy)
