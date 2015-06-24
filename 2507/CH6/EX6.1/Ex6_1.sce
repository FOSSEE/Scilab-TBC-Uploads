clc
clear
printf("Example 6.1 | Page number 148 \n\n");
//Find the heat rejected at the condensor and thermal efficiency of the plant

//Given Data
Q1 = 300 //kJ //heat supplied at the boiler
Wt = 100 //kJ //work output of turbine
Wp = 0.5 //kJ //work input to pump

//Solution
Q2 = Q1 - (Wt - Wp) //kJ //heat rejected at the condensor
printf("Heat rejected at the condensor = %.1f kJ\n",Q2);
efficiency = 1 - (Q2/Q1)
printf("The thermal efficiency of plant = %.2f ",efficiency)
