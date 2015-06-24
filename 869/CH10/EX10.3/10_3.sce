clc
//initialisation of variables
Ds= 1 //in
Db= 1.5 //in
Ls= 4 //in
Lb= 6 //in
Gs= 12*10^6 //psi
Gb= 6.4*10^6 //psi
T= 10000 //lb in
//CALCULATIONS
A=[(1),(1);(Ls*12/(Gs*Ds^4)),(-Lb*12/(Gb*Db^4))]
b=[T;0]
c= A\b
Tab= c(1,1)
Tbc= c(2,1)
//RESULTS
printf ('Torque in section AB= %.2f lb in',Tab)
printf ('\n Torque in section AB =%.2f lb in',Tbc)

