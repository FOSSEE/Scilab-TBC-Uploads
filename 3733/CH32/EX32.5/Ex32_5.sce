// Example 32_5
clc;funcprot(0);
//Given data
L_1=60;// Load in MW
L_2=60;// Load in MW
L_3=30;// Load in MW
T_12=8000;// Running time in hours
T_3=2000;// Running time in hours
E=876*10^6;// kWh per year

//Calculation
P=L_1+L_2+L_3;// Plant capacity in MW
L_a=(E/8760)/1000;// MW
F_l=(L_a/P)*100;// Load factor in %
L=60;// L_1=L_2=L in MW
ME=(2*L*T_12)+(1*L_3*T_3);// Maximum possile energy which can be produced by the plant in MEWh
Puf=(E/(ME*10^3));// Plant use factor
printf('\nLoad factor=%0.0f percentage \nPlant use factor=%0.2f',F_l,Puf);
