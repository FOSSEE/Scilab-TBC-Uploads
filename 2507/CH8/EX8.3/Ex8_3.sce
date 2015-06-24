clc
clear
printf("Example 8.3 | Page number 212 \n\n");
//Evaluate delta S for the reservoir
//Given Data
Q = 10 //kJ //heat transfered from reservoir
T = 100+273 //K //isothermal expansion temperature
T_res = 100+273 //K //reservoir temperature
//Solution
delta_S_sys = (Q/T) //kJ/K //delta S for the system
printf("Change in entropy(Delta S) for the system = %.5f kJ/K\n",delta_S_sys);

delta_S_res = -1*(Q/T_res) //kJ/K //delta S for the reservoir
printf("Change in entropy(Delta S) for the reservoir = %.5f kJ/K\n",delta_S_res);
