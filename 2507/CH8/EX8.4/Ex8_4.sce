clc
clear
printf("Example 8.4 | Page number 212 \n\n");
//Evaluate delta S for the reservoir
//Given Data
Q = 1; //kJ //heat transfered from reservoir
T = 100+273; //K //isothermal expansion temperature
T_res = 100+273; //K //reservoir temperature
//Solution
delta_S_res = -1*(Q/T_res); //kJ/K //delta S for the reservoir
printf("Change in entropy(Delta S) for the reservoir = %.5f kJ/K\n",delta_S_res);
