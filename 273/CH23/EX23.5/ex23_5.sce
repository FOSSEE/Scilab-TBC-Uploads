clc;clear;
//Example 23.5
//calculation of ionic polarizability

//given values
n=1.5;//refractive index
er=6.75;//relative permittivity

//calculation
Pi=(er-n^2)*100/(er-1);
disp(Pi,'percentage ionic polarizability (in %)) is')