clc
P1 = 300 // Initial gas pressure in kPa
V1 = 0.07 // Initial volume of gas in m^3
m = 0.25 // Mass of gas in kg
T1 = 80 // Initial temperature of gas in degree Celsius
R = (P1*V1)/(m*(T1+273)) // constant
P2 = P1 // process condition
V2 = 0.1 // Final volume in m^3
T2 = (P2*V2)/(m*R) // Final temperature in K
W = -25 //Work done in kJ
cv = -W/(m*(T2-T1-273)) // Constant volume heat capacity in kJ/kg
cp = R+cv //Constant pressure heat capacity in kJ/kg
S21 = m*cp*log(V2/V1) // Entropy change
printf("\n Example 10.7")
printf("\n Cv of the gas is %f kJ/kg K",cv)
printf("\n Cp of the gas is %f kJ/kg K",cp)
printf("\n Increase in the entropy of the gas is %f kJ/kg K",S21)
//The answers vary due to round off error

