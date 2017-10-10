clc
T1 = 37 // Final water temperature in degree Celsius 
T2 = 35// Initial water temperature in degree Celsius 
m = 1  // Mass of water in kg
cv = 4.187 // Specific heat capacity of water in kJ/kgK
printf("\n Example 7.1")
S = m*cv*log((T1+273)/(T2+273))  // Change in entropy of the water
printf("\n Change in entropy of the water is %f kJ/K",S)
//The answer provided in the textbook is wrong

