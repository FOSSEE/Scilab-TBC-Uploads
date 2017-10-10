//Calculate the pH of of a buffer solution what is pH of the buffer solution after the addition of HCl

//Example 11.4

clc;

clear;

C1=0.40; //Concentration of Acetic acid in M

C2=0.55; //Concentration of Sodium Acetate in M

pH1=4.76+log10(C2/C1); //pH of the Buffer solution before addition of HCl

printf("pH of the Buffer solution = %.2f",pH1);

C3=0.10; //Concentration of HCl in M

pH=4.76+log10((C2-C3)/(C1+C3)); // pH of the Buffer solution after addition of HCl

printf("\n pH of the Buffer solution after addition of HCl = %.2f",pH);
