clc
cp = 1.968 // Heat capacity in kJ/kg
cv = 1.507 // Heat capacity in kJ/kg
R_ = 8.314 // Gas constant
V = 0.3 // Volume of chamber in m^3
m = 2 // mass of gas in kg
T1 = 5// Initial gas temperature in degree Celsius
T2 = 100 // Final gas temperature in degree Celsius
R = cp-cv // Universal gas constant
mu = R_/R // molecular weight
Q12 = m*cv*(T2-T1) // The heat transfer at constant volume
W12 = 0 // work done
U21 = Q12 // change in internal energy
H21= m*cp*(T2-T1) // change in  enthalpy
S21 = m*cv*log((T2+273)/(T1+273)) //change in  entropy 

printf("\n Example 10.2")
printf("\n\n Gas constant of the gas is %f kJ/kg K ",R)
printf("\n Molecular weight the gas is %f kg/kg mol",mu)
printf("\n The heat transfer at constant volume is %f kJ",Q12)
printf("\n Work done is %d kJ",0)
printf("\n The change in internal energy is %f kJ",U21)
printf("\n The change in  enthalpy is %f kJ",H21)
printf("\n The change in  entropy is %f kJ/k",S21)
//The answers vary due to round off error
