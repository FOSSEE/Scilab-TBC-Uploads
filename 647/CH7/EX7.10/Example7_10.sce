clear;
clc;

// Example: 7.10
// Page: 280

printf("Example: 7.10 - Page: 280\n\n");

// Solution

//*****Data******//
P1 = 800;// [kPa]
T1 = 773;// [K]
H1 = 3480;// [kJ/kg]
P2 = 100;// [kPa]
T2 = 573;// [K]
H2 = 3074;// [kJ/kg]
//***************//

// Solution (a)
// Velocity of the fluid exiting the nozzle:
// U2 = sqrt(U1^2 + 2*(H1 - H2))
// Neglecting initial velocity:
U2 = sqrt(2*(H1 - H2)*1000);// [m/s]
printf("(a) Final Velocity is %.2f m/s\n",U2);

// Solution (b)
U1 = 40;// [m/s]
U2 = sqrt((U1^2 + 2*(H1 - H2))*1000);// [m/s]
printf("(b) Final Velocity is %.2f m/s\n",U2);