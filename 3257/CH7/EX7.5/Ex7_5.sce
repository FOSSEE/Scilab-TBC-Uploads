// Peak pressure in explosive forming
clc
m = 0.1 // mass of TNT in kg
d = 0.5 // standoff distance in m
K = 3.9e7 // constant of explosive
a = 1.15
printf("\n Example 7.5")
p = K*((m^(1/3))/d)^a
printf("\n Pressure of amount %.1f MPa is sufficient to form sheet metals.", p/1e6)

