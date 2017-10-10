clc; funcprot(0);
//Example 8.12  Absolute Coefficients with metric units

// Initialisation of variables
WbyS = 30;    //Wing loading(kg/m^2)
V = 40; 
alpha = 2;
rho = 0.125;

// Calculations
Cl = 0.585;        // Value of Cl from fig 8.10
V = sqrt(2*WbyS/(rho*Cl)); 
//Results 
disp(V,"Required speed (m/s):");