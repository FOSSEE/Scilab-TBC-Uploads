clc
//Initialization of variables
Ws = 1.3 //lb
Fv = 22 //lb
yW = 64.0 // lb/ft^3
yF = 2.0 // lb/ft^3
// Calculations
Vr = (Ws + Fv)/(yW-yF)
//results
printf(" the minimum volume of foam is %.3f ft^3",Vr)
