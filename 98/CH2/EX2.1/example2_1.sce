//Chapter 1
//Example 2.1
//Page 16

clear;
clc;

n_overall = 20;
W = 0.6;

printf("Let x kcal/kg be the calorific value of fuel.\n")
printf("Heat produced by 0.6 kg of coal = 0.6 x kcal\n")
printf("Heat equivalent of 1 kWh = 860 k cal\n")

//Calculation of calorific value of coal
printf("Now, n_overall = Electrical output in heat units/ Heat of combustion\n")

x=860/(0.6*0.2);
printf("x = %.4f kcal/kg\n", x)