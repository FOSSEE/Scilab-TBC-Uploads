// Exa 1.26

clc;
clear;

// Given

R = 50; // Resistance value (Ohms)
dR = 0.2; // variation in Resistance value (Ohms)
I = 4; // Current value measured (Amp)
dI = 0.02; // variation in current measurements (Amp)

// Solution

Per_Limiting_Error_Resis = dR/R * 100;
Per_Limiting_Error_Curr = dI/I * 100;

P = I^2 * R;
dP = Per_Limiting_Error_Curr*2 + Per_Limiting_Error_Resis;

printf('The limiting error in resistance measurement = ± %.2f percent \n',Per_Limiting_Error_Resis);
printf(' The limiting error in current measurement = ± %.2f percent \n',Per_Limiting_Error_Curr);
printf(' The limiting error in power measurement =  %.2f percent \n',dP);
