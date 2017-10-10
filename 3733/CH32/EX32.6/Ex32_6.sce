// Example 32_6
clc;funcprot(0);
//Given data
MD_1=40;// MW
MD_2=50;// MW
MD_3=30;// MW
F_l=60;// Load factor in percentage
DF=1.2;// Diversity factor

// Calculation
MD_s=MD_1+MD_2+MD_3;// Sum of individual maximum demands in MW
SMD=MD_s/DF;// Simultaneous maximum demand in MW
P=MD_s;// The capacity of the plant in MW
L_a=(F_l/100)*SMD;// Average load in MW
E=L_a*10^3*8760;// Energy supplied per year in kWh
printf('\n(a)The maximum load on the power plant=%0.0f MW \n(bThe capacity of the power plant=%0.0f MW \n(c)Annual energy supplied per year=%0.3e kWh',SMD,P,E );
