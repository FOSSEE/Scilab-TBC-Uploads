clear;
clc;

// Illustration 3.4
// Page: 69

printf('Illustration 3.4 - Page: 69\n\n');

// solution

//***Data****//
// a = UF6 b = air
// The average heat transfer coefficient: Nu_avg = 0.43+0.532(Re^0.5)(Pr^0.31)
// The analogus expression for mass transfer coefficient: Sh_avg = 0.43+0.532(Re^0.5)(Sc^0.31)
d = 0.006;// [m]
velocity = 3;// [m/s]
surf_temp = 43;// [C]
bulk_temp = 60;// [C]
avg_temp = (surf_temp+bulk_temp)/2; //[C]
density = 4.10;// [kg/cubic m]
viscosity = 2.7*10^(-5);// [kg/m.s]
Dab = 9.04*10^(-6);// [square m/s]
press = 53.32;// [kN/square m]
tot_press = 101.33;// [kN/square m]
//******//

avg_press = press/2; // [kN/square m]
Xa = avg_press/tot_press;
Xb = 1-Xa;
Re = d*velocity*density/viscosity;
Sc = viscosity/(density*Dab);
Sh_avg = 0.43+(0.532*(2733^0.5)*(0.728^0.5));
c = 273.2/(22.41*(273.2+avg_temp));// [kmol/cubic m]
F_avg = Sh_avg*c*Dab/d;//[kmol/cubic m]
Nb = 0;
Ca1_by_C = press/tot_press;
Ca2_by_C = 0;
Flux_a = 1;
// Using Eqn. 3.1
Na = Flux_a*F_avg*log((Flux_a-Ca2_by_C)/(Flux_a-Ca1_by_C));//[kmol UF6/square m.s]
printf('Rate of sublimation is %e kmol UF6/square m.s',Na);