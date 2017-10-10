// Example 32_17
clc;funcprot(0);
//Given data
P=1000;// Plant capacity in MW
P_1=1000;// MW
t_1=2;// hours
P_2=500;// MW
t_2=6;// hours
P_3=300;// MW
t_3=8;// hours
n=50;// Number of days plant should shut down completely

// Calculation
E_g=((P_1*t_1))+((P_2*t_2)+((P_3*t_3)));//Eenergy generated per working day in Mwh
N=365-n;// Working days/year of the plant
E_s=E_g*N;// Energy supplied per year in MWh
F_l=E_s/(P*(N*24));// Annual load factor
printf('\n Annual load factor=%0.3f',F_l);
 
