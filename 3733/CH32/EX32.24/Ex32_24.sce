// Example 32_24
clc;funcprot(0);
//Given data
P=60;// MW
n_o=25/100;// The over all efficiency
CV=30000;// The calorific value of value in kJ/kg
F_l=30/100;// Load factor

// Calculation
I=(1/n_o)*3600;// Input in kJ
Cc=(I/CV);// Consumption of coal per kW-hr in kg
E=F_l*P*10^3*24;// kW-hr
Cc_d=(E*Cc)/1000;// Consumption of coal per day in tons
printf('\nConsumption of coal per kW-hr=%0.2f kg \nConsumption of coal per day=%0.1f tons',Cc,Cc_d);
