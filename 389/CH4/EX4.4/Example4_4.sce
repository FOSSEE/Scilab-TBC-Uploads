clear;
clc;

// Illustration 4.4
// Page: 96

printf('Illustration 4.4 - Page: 96\n\n');

// solution

//****Data****//
a = 0.005;// [m]
// For the KCl diffusion
Dab1 = 1.84*10^(-9);// [square m/s]
thetha = 4.75*3600;// [s]
Ca_Inf = 0;
// For K2CrO4 diffusion
Cao = 0.28;// [g/cubic cm]
Ca_Inf = 0.002;// [g/cubic cm]
Dab2 = 1.14*10^(-9);// [square m/s]
//*******//

E = 0.1;// For 90% removal of KCl
// From Fig. 4.2 (Pg 91): Deff*thetha/a^2 = 0.18
Deff = 0.18*a^2/thetha;// [square m/s]
Dab_by_Deff = Dab1/Deff;
Ca_thetha = 0.1*0.28;// [g/cubic cm]
Es = (Ca_thetha-Ca_Inf)/(Cao-Ca_Inf);
// From Fig. 4.2 (Pg 91): Deff*thetha/a^2 = 0.30
Deff = Dab2/Dab_by_Deff;// [square m/s]
thetha = 0.3*a^2/Deff;// [s]
thetha = thetha/3600;// [h]
printf('The time reqd. is:%f h',thetha);