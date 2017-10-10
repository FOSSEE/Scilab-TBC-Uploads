clc; funcprot(0);
//Example 8.16  Center of Pressure 

// Initialisation of variables
CMo = -0.27;
alpha = 6;
Cl = 0.84;
Cd = 0.06;

// Calculations
CP_approx = -CMo/Cl;
CP_exact = -CMo/(Cl*cosd(alpha)+Cd*sind(alpha));

//Results 
disp(CP_exact*100,"Exact CP (%chord length) :",CP_approx*100,"Approximate CP (%chord length)");