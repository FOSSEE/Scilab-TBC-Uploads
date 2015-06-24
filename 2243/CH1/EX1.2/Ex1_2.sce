clear;
clc();
//Given :
M= 10.0; //weight in g
V= 5.80;//volume in cm^3
Rho = M/V; // Density in g/cm^3
delta_M= 0.2 //  apparatus has a least count of 0.2 g
delta_V= 0.05// apparatus has a least count of 0.05 cm^3
delta_Rho = (delta_M/V) +((M*delta_V)/V^2);// absolute error in g/cm^3
re = delta_Rho/Rho ; //Evaluating Relative Error
p = re*100;// Evaluating Percentage Error
printf("Percentage error = %.1f percentage.",p);
//Result obtained differs from that in textbook, because delta_M walue is taken 0.1 g , instead of 0.2 g as mentioned in the problem statement.
