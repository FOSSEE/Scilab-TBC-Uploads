// Exa 5.4

clc;
clear;

// Given data

// Phase shift oscillator as given in Fig. 5.15

F=100; // Oscillation frequency(Hz)


// Solution

printf(' Let C=0.1 microFarads, then from Eq. (5.25) we can get value of R. \n ');
R = 1/(sqrt(6)*2*%pi*10^-7*F);

printf(' The value of R as calculated = %.2f kΩ. \n ',R/1000);

printf(' To prevent overloading of the amplifier by RC network, R1 <= 10*R. \n');
R1=10*R;
printf('  Therefore R1 = %d kΩ. \n ',round(R1/1000));
// Since Rf = 29*R1;
Rf= 29*round(R1/1000);  // kΩ
printf(' Since Rf = 29*R1, therefore value of Rf = %d kΩ. \n ',Rf);
