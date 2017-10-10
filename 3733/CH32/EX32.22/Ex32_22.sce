// Example 32_22
clc;funcprot(0);
//Given data
PC_a=32;// Plant capacity in MW
PC_b=20;// MW
E_a=135*10^6;// The energy output in kWh
E_b=9.5*10^6;// kWh
MD_b=15;// MW
t_b=2900;// Time in hours
MD_a=25;// MW

// Calculation
// (a)Base load plant
ALF_a=E_a/((MD_a*10^3)*8760);// Annual load factor
PUF_a=MD_a/PC_a;// Plant use factor
CF_a=E_a/((PC_a*10^3)*8760);// Capacity factor
//(b)Peak load plant
ALF_b=E_b/((MD_b*10^3)*8760);// Annual load factor
PUF_b=MD_b/PC_b;// Plant use factor
CF_b=E_b/((PC_b*10^3)*t_b);// Capacity factor
printf('\n(a)Annual load factor=%0.3f \n   Plant use factor=%0.2f \n   Capacity factor=%0.2f \n(b)Annual load factor=%0.3f \n   Plant use factor=%0.2f \n   Capacity factor=%0.3f',ALF_a,PUF_a,CF_a,ALF_b,PUF_b,CF_b);
// The answer vary due to round off error
