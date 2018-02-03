// Exa 6.1

clc;
clear;

// Given data

// Refering bridge shown in fig. 6.8 
R1 = 1000; // Ohms
R2 = 4000; // Ohms
R3 = 100; // Ohms
R4 = 400; // Ohms
Rg = 100; // Ohms
Si = 100; // Sensitivity in mm/microAmp
V = 3; // Voltage applied
R4_imbalance = 1; // resistance added in R4 to create imbalance

// Solution

printf('The bridge is originally in balance. Therefore, R1/R3 = R2/R4 \n');
printf('Let there be imbalance in the bridge circuit because of increase in value of R4 value by 1 Ohm \n');
printf('Therefore, R4 = 400+X Ohms \n');
printf('Thevenins Resistance  Rth = (100*1000)/(100+1000) + (4000*(400+X))/(4400+X) \n'); // Rth = R1*R3/(R1+R3) + R2*R4/(R2+R4)
printf('Neglecting X \n');
// Therefore
Rth = R1*R3/(R1+R3) + R2*R4/(R2+R4);
printf('Rth becomes %d ohms \n',round(Rth));
printf('Eth = [R3/(R1+R3) + R4/(R2+R4)]*E; \n');
// Applying binomial expansion and neglecting X2 term, X is small 
// Therefore
X = R4_imbalance;

Eth =  V*10*X/48400;
printf('Applying binomial expansion, Eth = %.2f µV \n',round(Eth*10^6));
Ig = Eth/(Rth+Rg); // Galvanometer current
D = Ig*Si; // Deflection in mm
printf('Galvanometer Current Ig = %.3f µA \n', Ig*10^6);
printf('Galvanometer deflection D = %.2f mm \n',D*10^6);

// The answer provided in the textbook is wrong
