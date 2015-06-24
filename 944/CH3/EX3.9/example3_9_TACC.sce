//example 3.9

clear;
clc;

disp("The standard heat of combustion of");
disp("2C6H6(l)+ 15O2(g)-> 12 CO2(g)+ 6 H2O(l)");
disp("H1(standard heat of combustion)=-6536 KJ/mol");
//Given:
H1=-6536;//standard heat of combustion [KJ/mol]

//to find the standard heat of rxn for combustion of 1 mole of C6H6
disp("C6H6(l)+ 7.5 O2(g)-> 6 CO2(g)+ 6 H2O(l)");
H2=H1/2;//standard heat of combustion[KJ/mol]
printf(" H2(standard heat of combustion for 1 mole of C6H6)= %f KJ/mol",H2);
