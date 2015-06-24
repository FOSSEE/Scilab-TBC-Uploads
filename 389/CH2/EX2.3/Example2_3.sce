clear;
clc;

// Illustration2.3
// Page: 32

printf('Illustration 2.3 - Page: 32\n\n');

// solution

//***Data***//
// a = C2H5OH b = air
Pt = 101.3*10^(3);//[N/square m]
T = 273;//[K]
//********//

Ma = 46.07;// [kg/kmol]
Mb = 29;// [kg/kmol]
//For air from Table 2.2 (Pg 33)
Eb_by_k = 78.6;// [K]
rb = 0.3711; // [nm]
// For C2H5OH using Eqn. 2.38 & 2.39
// From Table 2.3
Va = (2*0.0148)+(6*0.0037)+(0.0074);// [cubic m/kmol]
Tba = 351.4;// [K]
ra = 1.18*(Va^(1/3));//[nm]
Ea_by_k = 1.21*Tba;// [K]
rab = (ra+rb)/2;// [nm]
Eab_by_k = sqrt(Ea_by_k*Eb_by_k);// [K]
Collision_value = T/Eab_by_k;
//From Fig. 2.5 (Page: 32) f(collision value)
Collision_func = 0.595;
Dab = (10^(-4)*(1.084-(0.249*sqrt((1/Ma)+(1/Mb))))*T^(3/2)*sqrt((1/Ma)+(1/Mb)))/(Pt*(rab^2)*Collision_func);//[square m/s]
printf('The diffusivity of ethanol through air at 1 atm. & 0C is %e square m/s\n',Dab);
printf('The observed value (Table 2.1) is 1.02*10^(-5) square m/s')