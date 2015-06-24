clear;
clc;

// Illustration 7.10
// Page:241

printf('Illustration 7.10 - Page:241\n\n');

// solution

//****Data****//
Tg = 60;// [OC]
Y_prime = 0.050;// [kg toulene/kg air]
//*****//

// Wet Bulb temparature
Dab = 0.92*10^(-5);// [square m/s]
density_air = 1.060;// [kg/cubic cm];
viscocity_G = 1.95*10^(-5);// [kg/m.s]
Sc = viscocity_G/(density_air*Dab);
// From Eqn. 7.28
hG_by_kY = 1223*(Sc^0.567);// [J/kg.K]
// Soln. of Eqn. 7.26 by trial & error method:
// (Tg-Tw) = (Yas_prime-Y_prime)*(lambda_w/hG_by_kY)
Tw = 31.8;// [OC]
printf("Wet Bulb Temparature:%f OC\n",Tw);

// Adiabatic Saturation Temparature
C_air = 1005;// [J/kg.K]
C_toulene = 1256;// [J/kg.K]
Cs = C_air+(C_toulene*Y_prime);// [J/kg.K]
// Soln. of Eqn. 7.21 by trial & error method:
// (Tg-Tas) = (Yas_prime-Y_prime)*(lambda_as/Cs)
Tas = 25.7;// [OC]
printf("Adiabatic Saturation Temparature: %f OC\n",Tas);