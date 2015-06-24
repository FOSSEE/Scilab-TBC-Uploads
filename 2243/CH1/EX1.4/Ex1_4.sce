clc();
clear;
//Given
// (a) Newton's Theory
// v= (P/rho)^2  , P= Pressure , rho = density
P = 76; // 76 cm of Hg pressure
V= 330 ; // velocity of sound in m/s
rho = 0.001293; // density for dry air at 0 degrees celsius in g/cm^3
g = 980;//gravitational acceleration in cm/s^2
//Density of mercury at room temperature is 13.6 g/cm^3 
// 1 cm^2 = 1.0*10^-4 m^2
v = sqrt(((P*13.6*g)/rho)*10^-4); // velocity of sound in m/s
p= ((V-v)/V)*100; // % lower than the experimental value
printf("(a) It is is %d percentage lower than the experimental value.\n\n",p);

// (b) Laplace's Theory 
// v= ((gama*P)/rho)^2., gamma = adiabatic index Thus,
//Given :
gama = 1.41 // Adiabatic index
//Density of mercury at room temperature is 13.6 g/cm^3 
// 1 cm^2 = 1.0*10^-4 m^2
v1 = sqrt(((gama*P*13.6*g)/rho)*10^-4);// velocity of sound in m/s
p1 = ((V-round(v1))/V)*100;// % higher than the eperimental value
printf("(b) It is %.1f  percantage  higher than the experimental value.\n",abs(p1));

