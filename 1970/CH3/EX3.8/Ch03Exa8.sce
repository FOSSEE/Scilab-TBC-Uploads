// Scilab code Exa3.8 : : Page 125(2011)
clc; clear;
x = 0.25;     // Thickness of Al, metre
U_l = 1/x*log(50);     // Linear  absorption coefficient
d = 2700;             // density of the Al, Kg per cubic centimetre 
x_h = log(2)/U_l;     // Half value thickness of Al, metre
U_m =  U_l/d;         // Mass absorption coefficient, square metre per Kg
printf("\nThe half value thickness of Al = %6.4f Kg per cubic metre \nThe mass absorption coefficient = %7.5f square metre per Kg ",x_h, U_m);

// Result
// The half value thickness of Al = 0.0443 Kg per cubic metre 
// The mass absorption coefficient = 0.00580 square metre per Kg  
