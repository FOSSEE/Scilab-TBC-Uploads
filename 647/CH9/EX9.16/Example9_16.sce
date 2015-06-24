clear;
clc;

// Example: 9.16
// Page: 362

printf("Example: 9.16 - Page: 362\n\n");

// Solution

//*****Data******//
V1 = 2.8;// [Volume of Oxygen, L]
V2 = 19.6;// [Volume of hydrogen, L]
R = 1.987;// [cal/K mol]
//**************//

n1 = V1/22.4;// [moles of Oxygen]
n2 = V2/22.4;// [moles of Hydrogen]
n = n1 + n2;// [total number of moles]
x1 = n1/n;// [mole fraction of Oxygen]
x2 = n2/n;// [mole fraction of Hydrogen]
// From Eqn. 9.88:
deltaS_mix = - (R*(x1*log(x1) + x2*log(x2)));// [cal/K mol]
printf("The entropy change of mixiong is %.3f cal/K mol",deltaS_mix)