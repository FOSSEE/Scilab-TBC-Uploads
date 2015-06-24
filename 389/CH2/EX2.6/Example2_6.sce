clear;
clc;

// Illustration 2.6
// Page: 37

printf('Illustration 2.6 - Page 37\n\n');

// solution

//****Data****//
T2 = 70+273;// [K]
//**********//

// a = mannitol b = H2O
// From Illustration 2.5 at 20 C
viscosity1 = 1.005*10^(-3); // [kg/m.s]
Dab1 = 0.56*10^(-9); //[m^2/s]
T1 = 273+20;// [K]
// At 70 C
viscosity2 = 0.4061*10^(-3); // kg/m.s
// Eqn. 2.44 indicates Dab*viscocity/T  =  constnt
Dab2 = Dab1*(T2)*(viscosity1)/(T1*viscosity2);// [square m/s]
printf('Diffusivity of mannitol at 70 OC is %e square/s\n',Dab2);
printf('Observed value at 70 OC is 1.56*10^(-9) square m/s');