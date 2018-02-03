// Exa 7.1

clc;
clear;

// Given

NonLinearity = 1 ; // in percentage
P = 5; //Power rating in Watts
StepSize = 50; // in Ohms
Rmin = 10 ; // in Ohms
Rmax = 10000 ; // in Ohms

// Solution

printf('Max Error in linearity - Non-linearity = 1 percent \n');
printf(' Therefore, Rp/Rm should be less than 0.1 \n');
// If Rp/Rm < 0.1
// per_Error = 15 * (Rp/Rm)
// Therefore
Rp = (1/15)*Rmax;
printf(' If Rp/Rm < 0.1 \n Therefore we can choose a potentiometer with a total resistance Rp = %.2f Ohms at the maximum. Any value of Rp less than %.2f Ohms  would be all right as far as the non-linearity is concerned  \n',Rp,Rp);

printf(' However, lower the value of Rp lower will be the sensitivity. Therefore we choose 650 Ohms potentiometer from the family, which will have maximum sensitivity and at the same time have non-linearity less than 10 percent  \n');
Rp_selected = 650; // Ohms

Max_Ecx = sqrt(P*Rp_selected);
s = Max_Ecx/360; //Sensitivity

printf(' The senstivity of potentiometer = %.2f V/degree \n',s);
