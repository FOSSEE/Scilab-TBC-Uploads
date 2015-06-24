clear;
clc;

// Illustration 4.3
// Page: 94

printf('Illustration 4.3 - Page: 94\n\n');

// solution 

//****Data****//
z = 0.1;// [cm]
pa1 = 1;// [cmHg]
pa2 = 0;// [cmHg]
Da = 1.1*10^(-10)*10^4;// [square cm/s]
//***********//

// Solubility coeffecient in terms of Hg
Sa = 0.90/76;// [cubic cm gas (STP)/cubic cm.cmHg]
// Using Eqn. 4.15
Va = (Da*Sa*(pa1-pa2))/z;// [cubic cm(STP)/square cm.s]
// Using Eqn. 4.16
P = Da*Sa;// [cubic cm gas (STP)/square cm.s.(cmHg/cm)]
printf('The rate of diffusion of CO is:%e cubic cm(STP)/square cm.s\n',Va);
printf('The permeability of the membrane is %e cubic cm gas (STP)/square cm.s.(cmHg/cm)',P)