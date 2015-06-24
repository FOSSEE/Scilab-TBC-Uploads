clear;
clc;

// Illustration 1.10
// Page: 30

printf('Illustration 1.10 - Page:30 \n\n');
// Solution

//*****Data*****//
//  acetone-1   benzene-2
T = 298; // [K]
x_1 = 0.7808;
x_2 = 1-x_1; 
// The infinite dilution diffusivities are
D_12o = 2.75*10^-9; // [square m/s]
D_21o = 4.15*10^-9; // [square m/s]
// From the NRTL equation, for this system at the given temperature and concentration the thermodynamic correction factor r = 0.871.
r = 0.871;
D_12exp = 3.35*10^-9; // [square m/s]
//*****//

// Using equation 1.56
D_12 = (D_12o^x_2)*(D_21o^x_1);
D_12 = D_12*r;
printf("The theoritical value of Fick diffusivity is %e square m/s",D_12);
// The predicted value of the Fick diffusivity is in excellent agreement with the experimental result.