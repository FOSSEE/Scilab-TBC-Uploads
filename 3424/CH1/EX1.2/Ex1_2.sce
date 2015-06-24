clc
//Initialization of variables
P = 64.7*144 //Total Pressure  lb/ft^2
R = 1716 // ft-lb/slug.R
T = 530 // F
// Calculations
D = P/(R*T) 
//Results
printf("The air density obtained from the ideal gas law is %.4f slugs/ft^3",D)
