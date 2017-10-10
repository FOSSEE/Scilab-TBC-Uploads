clc
// Part (a)
T1 = 273 // Initial temperature of water in Kelvin
T2 = 373 // Temperature of heat reservoir in Kelvin
m = 1 // Mass of water in kg
cv = 4.187 // Specific heat capacity of water

printf("\n Example 7.2")
Ss = m*cv*log(T2/T1) // entropy change of water
Q = m*cv*(T2-T1) // Heat transfer 
Sr = -(Q/T2) // Entropy change of universe
S = Ss+Sr // Total entropy change

printf("\n The entropy change of the universe is %f kJ/K",S)

// Part (b)
T3 = 323 // Temperature of intermediate reservoir in K
Sw = m*cv*(log(T3/T1)+log(T2/T3)) // entropy change of water
Sr1 = -m*cv*(T3-T1)/T3 // Entropy change of universe
Sr2 = -m*cv*(T2-T3)/T2 // Entropy change of universe
Su = Sw+Sr1+Sr2 // Total entropy change
printf("\n The entropy change of the universe is %f kJ/K",Su)
//The answers vary due to round off error

