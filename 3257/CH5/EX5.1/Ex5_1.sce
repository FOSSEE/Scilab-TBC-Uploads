// Determining the amount of phases in carbon steel
clc
m = 10 // mass in kg
t1 = 1173 // temperature in kelvin
t2 = 1001 // temperature in kelvin
t3 = 999 // temperature in kelvin
c_gamma1 = 0.77 // from table for t2
c_o = 0.4// from table
c_a = 0.022// from table
c_gamma2 = 6.67// from table for t3
printf("\n Example 5.1")
printf("\n\n Part A:")
printf("\n From figure, Percent gamma is 100 (10 kg) and percent alpha is zero")
printf("\n\n Part B:")
per_alpha = 100*((c_gamma1-c_o)/(c_gamma1-c_a))
per_gamma = 100*((c_o-c_a)/(c_gamma1-c_a))
printf("\n %% alpha is : %.1f%% \t %% gamma is : %0.1f%%",per_alpha, per_gamma)
printf("\n Mass of alpha is : %.1f kg \t mass of gamma is : %.1f kg",per_alpha*m/100, per_gamma*m/100)
// while alpha percentage is 50 and gamma percentage is 50
printf("\n\n Part C:")
per_alpha = 100*((c_gamma2-c_o)/(c_gamma2-c_a))
printf("\n %% alpha is : %d%% ",per_alpha)
printf("\n Mass of alpha is : %.1f kg ",per_alpha*m/100 )
