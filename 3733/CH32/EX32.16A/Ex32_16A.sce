// Example 32_16A
clc;funcprot(0);
//Given data
P=1000;// Plant capacity in MW
P_1=1000;// MW
t_1=2;// hours
P_2=500;// MW
t_2=6;// hours
n=60;// Number of days plant should shut down annualy

// Calculation
E_d=((P_1*t_1))+((P_2*t_2));//The amount of energy generated per day in Mwh/day
N=365-n;// No. of days (the plant is working)
E_y=E_d*N;//The amount of energy generated per year in Mwh
L_f=E_y/(P*(N*24));// Annual load factor
printf('\n Annual load factor=%0.3f',L_f);
