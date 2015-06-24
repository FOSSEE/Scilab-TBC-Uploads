// Scilab code Ex2.1: Pg.44 (2005)
clc; clear;
c = 3e08;   // Velocity of light, m/s
u = 0.750*c;   // Velocity of electron, m/s
m = 9.11e-31;   // Rest mass of electron, kg
p_r = m*u/(sqrt(1 - (u/c)^2));   // Relativistic momentum of electron, kgm/s
p = m*u;   // Classical momentum of electron, kg-m/s
printf("\nThe relativistic momentum of electron = %4.2fe-22 kg-m/s", p_r*1e+22);
printf("\nThe classical momentum of electron = %4.2fe-22 kg-m/s", p*1e+22);
printf("\nThe relativistic result is 50 percent greater than the classical result.");

//Result
// The relativistic momentum of electron = 3.10e-22 kg-m/s
// The classical momentum of electron = 2.05e-22 kg-m/s
// The relativistic result is 50 percent greater than the classical result.
