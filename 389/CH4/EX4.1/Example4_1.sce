clear;
clc;

// Illustration 4.1
// Page: 89

printf('Illustration 4.1 - Page: 89\n\n');
 
// solution

//***Data****//
P = 2;// [atm]
a1 = 0.025;// [m]
a2 = 0.050;// [m]
solub = 0.053*P;// [cubic m H2 (STP)/(cubic m rubber)]
Ca1 = solub/22.41;// inner surface of the pipe
Ca2 = 0;// resistance to difusion of H2 away from the surface is negligible.
Da = 1.8*10^(-10);// [square m/s]
l = 1;// [m]
//********//

z = (a2-a1)/2;// [m]
// Using Eqn. 4.4
Sav = (2*(%pi)*l*(a2-a1))/(2*log(a2/a1));// [square m]
// Using Eqn. 4.3
w = (Da*Sav*(Ca1-Ca2))/z;// [kmol H2/s for 1m length]
w = w*2.02*10^3*3600;// [g H2/m.h]
printf('The rate of loss of H2 by diffusion per m of pipe length: %e g H2/m.h',w);