// Example 32_17A
clc;funcprot(0);
//Given data
L_i=720;// Industrial load in MW
L_c=350;// Commercial load in MW
L_d=10;// Domestic power in MW
L_dl=50;// Domestic load in MW
MD=1000;// MW
E_g=50*10^5;// Energy generated in MWh/year

// Calculation
//(a)
F_d=(L_i+L_c+L_d+L_dl)/MD;// Diversity factor
AD=E_g/8760;// Average demand in MW
//(b)
F_l=AD/MD;// Annual load factor
printf('\n Annual load factor=%0.4f',F_l);
