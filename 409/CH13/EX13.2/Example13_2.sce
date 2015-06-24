clear ;
clc;
// Example 13.2
printf('Example 13.2\n\n');
//Page No. 405
// Solution

p =1 ;// Pressure -[atm]
V = 22415 ;// Molar valume -[cubic centimetre/g mol]
T = 273.15 ;// Temperature-[K]
R = (p*V/T);// Universal gas constant-[(cubic centimetre.atm)/(K.g mol)]
 printf('Universal gas constant is  %.2f (cubic centimetre*atm)/(K*g mol). ',R);