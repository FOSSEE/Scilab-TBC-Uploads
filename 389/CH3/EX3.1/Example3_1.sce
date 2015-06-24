clear;
clc;

// Illustration 3.1
// Page: 53

printf('Illustration 3.1 - Page: 53\n\n');

// solution

//****Data*****//
// a = CO2 b = H2O
Ca0 = 0;//[kmol/cubic m]
Cai = 0.0336;//[kmol/cubic m]
Dab = 1.96*10^(-9);// [square m/s]
//*******//

density = 998;// [kg/cubic m]
viscosity = 8.94*10^(-4);//[kg/m.s]
rate = 0.05;//[kg/m.s] mass flow rate of liquid
L = 1;//[m]
g = 9.81;//[m/square s]
// From Eqn. 3.10
del = ((3*viscosity*rate)/((density^2)*g))^(1/3);// [m]
Re = 4*rate/viscosity;
// Flow comes out to be laminar
// From Eqn. 3.19
Kl_avg = ((6*Dab*rate)/(3.141*density*del*L))^(1/2);//[kmol/square m.s.(kmol/cubic m)]
bulk_avg_velocity = rate/(density*del);//[m/s]
// At the top: Cai-Ca = Cai_Ca0 = Cai
//At the bottom: Cai-Cal
// From Eqn. 3.21 & 3.22
Cal = Cai*(1-(1/(exp(Kl_avg/(bulk_avg_velocity*del)))));// [kmol/cubic m]
rate_absorption = bulk_avg_velocity*del*(Cal-Ca0);// [kmol/s].(m of width)
printf('The rate of absorption is %e',rate_absorption);
// The actual value may be substantially larger.