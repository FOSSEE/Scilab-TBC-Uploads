clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.1   Page 884 \n')// Example 14.1

// Molar and mass fluxes of hydrogen and the relative values of the mass and thermal diffusivities for the three cases

T = 293      ;//[K] Temperature
Ma = 2       ;//[kg/kmol] Molecular Mass
//Table A.8 Hydrogen-Air Properties at 298 K
Dab1 = .41*10^-4;        //[m^2/s] diffusion coefficient
//Table A.8 Hydrogen-Water Properties at 298 K
Dab2 = .63*10^-8;        //[m^2/s] diffusion coefficient
//Table A.8 Hydrogen-iron Properties at 293 K
Dab3 = .26*10^-12;        //[m^2/s] diffusion coefficient
//Table A.4 Air properties at 293 K
a1 = 21.6*10^-6;        //[m^2/s] Thermal Diffusivity
//Table A.6 Water properties at 293 K
k = .603        ;//[W/m.K] conductivity
rho = 998       ;//[kg/m^3] Density
cp = 4182       ;//[J/kg] specific Heat
//Table A.1 Iron Properties at 300 K
a3 = 23.1 * 10^-6;    //[m^2/s]

//Equation 14.14
//Hydrogen-air Mixture
DabT1 = Dab1*(T/298)^1.5;     // [m^2/s] mass diffusivity
J1 = -DabT1*1;             //[kmol/s.m^2]  Total molar concentration
j1 = Ma*J1;               //[kg/s.m^2] mass Flux of Hydrogen
Le1 = a1/DabT1;             // Lewis Number Equation 6.50

//Hydrogen-water Mixture
DabT2 = Dab2*(T/298)^1.5;     // [m^2/s] mass diffusivity
a2 = k/(rho*cp)              ;//[m^2/s] thermal diffusivity  
J2 = -DabT2*1             ;//[kmol/s.m^2]  Total molar concentration
j2 = Ma*J2               ;//[kg/s.m^2] mass Flux of Hydrogen
Le2 = a2/DabT2             ;// Lewis Number Equation 6.50

//Hydrogen-iron Mixture
DabT3 = Dab3*(T/298)^1.5;     // [m^2/s] mass diffusivity
J3 = -DabT3*1;             //[kmol/s.m^2]  Total molar concentration
j3 = Ma*J3;               //[kg/s.m^2] mass Flux of Hydrogen
Le3 = a3/DabT3             ;// Lewis Number Equation 6.50

printf('\n Species    a (m^2/s)      Dab (m^2/s)       Le        ja (kg/s.m^2) \n Air        %.1e        %.1e        %.2f         %.1e \n Water      %.1e        %.1e        %i           %.1e \n Iron       %.1e        %.1e        %.1e     %.1e',a1,DabT1,Le1,j1,a2,DabT2,Le2,j2,a3,DabT3,Le3,j3);