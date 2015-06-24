clear;
clc;

// Illustration 1.8
// Page: 26

printf('Illustration 1.8 - Page:26 \n\n');
// Solution

//*****Data*****//
// solute A-C2H60   solvent B-water
T = 288; // [K]
//*****//
// Critical volume of solute
V_c = 167.1; // [cubic cm/mole]
// Calculating molar volume using equation 1.48
V_ba = 0.285*(V_c)^1.048; // [cubic cm/mole]
u_b = 1.153; // [Viscosity of liquid water at 288 K, cP]
M_solvent = 18; // [gram/mole]
phi_b = 2.26; // [association factor of solvent B]

printf('Illustration 1.8 (a) - Page:26 \n\n');
// Solution (a)

// Using the Wilke-Chang correlation, equation 1.52
D_abo1 = (7.4*10^-8)*(sqrt(phi_b*M_solvent))*T/(u_b*(V_ba)^.6); // [diffusivity of solute A in very dilute solution in solvent B, square cm/s]
printf("Diffusivity of C2H60 in a dilute solution in water at 288 K is %e square cm/s\n",D_abo1);
// The experimental value of D_abo reported in Appendix A is 1.0 x 10^-5 square cm/s
D_aboexp = 1*10^-5; // [square cm/s]
percent_error1 = ((D_abo1-D_aboexp)/D_aboexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f\n\n ",percent_error1);

printf('Illustration 1.8 (b) - Page:27 \n\n');
// Solution (b)

// Using the Hayduk and Minhas correlation for aqueous solutions equation 1.53
E = (9.58/V_ba)-1.12;
D_abo2 = (1.25*10^-8)*(((V_ba)^-.19)-0.292)*(T^1.52)*(u_b^E); // [square cm/s]
printf("Diffusivity of C2H60 in a dilute solution in water at 288 K is %e square cm/s\n",D_abo2);
percent_error2 = ((D_abo2-D_aboexp)/D_aboexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f ",percent_error2);