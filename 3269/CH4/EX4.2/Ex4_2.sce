// Example 4.2
clear all;
clc;

// Given data
wP0 = 1;                // Total fuel consumption rate in terms of kg/day
M = 500;                // Amount of Plutonium-239 in kg at startup of the reactor
breeding_gain = 0.15;   // Breeding gain of the reactor

// 1.
printf(" The Fast breeder reactor produces %.2f kg of plutonium-239 more for every kilogram consumed \n",breeding_gain);
// Calculation
// 1 year = 365 days
production_rate = ceil(breeding_gain*365);
// Result
printf("\n Production rate of plutonium-239 = %3.2f kg/day = %d kg/year",breeding_gain,production_rate);

// 2.
// Calculation 
t_Dl = M/production_rate;
t_De = log(2)*t_Dl;
// Result
printf(" \n Linear doubling time of plutonium fuel in the reactor = %2.1f years \n",t_Dl);
printf(" \n Exponential doubling time of plutonium fuel in the reactor = %2.1f years \n",t_De);
