clc
cp = 1.005 // Constant pressure heat capacity
Tmax = 1073 // Maximum cycle temperature in K
Tmin = 300// Minimum cycle temperature in K
Wnet_max = cp*(sqrt(Tmax)-sqrt(Tmin))^2 // maximum work
n_cycle = 1-sqrt(Tmin/Tmax) // cycle efficiency
n_carnot = 1-(Tmin/Tmax) // Carnot efficiency
r = n_cycle/n_carnot // Efficiency ratio
printf("\n Example 13.6\n")
printf("\n Maximum work done per kg of air is %f kJ/kg",Wnet_max)
printf("\n Cycle efficiency is %d percent",n_cycle*100)
printf("\n Ratio of Brayton and Carnot efficiency is %f",r)
//The answers vary due to round off error

