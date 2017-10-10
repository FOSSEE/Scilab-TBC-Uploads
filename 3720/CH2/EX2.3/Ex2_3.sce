// Example 2_3
clc;clear;funcprot(0);
//Given values
T_1=20;// degree celsius
T_2=50;//degree celsius
P_1=1;// atm
P_2=100;//atm
rho_1=998.0;// The density of water in kg/m^3

//Properties
//The coefficient of volume expansion at the average temperature T_avg=35°C
beta=0.337*10^-3;// k^-1
alpha=4.80*10^-5;//The isothermal compressibility of water in atm^-1

// Calculation
//(a)
gradT=(T_2-T_1);// K
gradrho=-(beta*rho_1*gradT);// The change in density in kg/m^3
rho_2=rho_1+gradrho;// The density of water at 50°C and 1 atm in kg/m^3
printf('The density of water at 50°C and 1 atm is rho_2 =%0.0f kg/m^3\n',rho_2);
//(b)
gradP=(P_2-P_1);
gradrho=alpha*rho_1*gradP;// kg/m^3
rho_2=rho_1+gradrho;//The density of water at 100 atm and 20°C in kg/m^3
printf('The density of water at 100 atm and 20°C is rho_2 =%0.1f kg/m^3\n',rho_2);
