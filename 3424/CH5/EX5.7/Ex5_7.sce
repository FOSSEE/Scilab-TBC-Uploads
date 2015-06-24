clc
// Intialization of variables
Fax = 0 // N
D1 = 1.94 // slugs/ft^3
A1 = 0.1 //ft^2
A2 = 0.1 //ft^2
V1 = 50 // ft/s
V2 = 50 // ft/s
Pen = 30 //psi
Pex = 24 // psi
// Calculations
M = D1*A1*V1
Fay = -(M)*(V1+V2) - (Pen-14.7)*144*A1 - (Pex-14.7)*144*A2 // lb
Ry = -(M)*(V1+V2) - (Pen)*144*A1 - (Pex)*144*A2 // lb
Fay1 = Ry + 14.7*144*(A1+A2)
// results 
printf(" the x component of force required is %.f lb ",Fax)
printf(" the \n y component of force required is %.f lb ",Fay)
printf(" the\n  y component of force required(aliter) is %.f lb ",Fay)
