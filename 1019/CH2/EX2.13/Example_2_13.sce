//Example 2.13
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
p1=10;// initial pressure in atm
p2=1;// final pressure in atm
T=300;// temperature in K

// To determine Wexp and Wcomp
Wexp=R*T*(1-(p2/p1));//work done in J mol^-1 during expansion
Wcomp=(-1)*R*T*(1-(p1/p2));//work done in J mol^-1 during compression
mprintf('(i) Work done by the system in expansion process = %f J mol^-1',Wexp);
mprintf('\n (ii) Work done on the system during compression process = %f J mol^-1',Wcomp);
//end