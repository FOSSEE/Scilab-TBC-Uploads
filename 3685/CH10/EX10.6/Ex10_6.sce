clc
P1 = 700 // Initial pressure of gas in kPa
T1 = 260 // Initial temperature of gas in degree Celcius 
T3 = T1 // Temperature at state 3
V1 = 0.028 // Initial volume of gas in m^3
V2 = 0.084 // Final volume of gas in m^3
R = 0.287 // Gas constant
m = (P1*V1)/(R*(T1+273)) // mass of gas  
P2 = P1 // Pressure at state 2
T2 = (T1+273)*((P2*V2)/(P1*V1)) // Temperature at state 2
n  = 1.5 // polytropic index 
P3 = P2*(((T3+273)/(T2))^(n/(n-1))) // Pressure at state 3
cp = 1.005 // COnstant pressure heat capacity in kJ/kgK
cv = 0.718 // COnstant volume heat capacity in kJ/kgK
Q12 = m*cp*(T2-T1-273) // HEat transfer
Q23 = m*cv*(T3+273-T2) + (m*R*(T2-T3-273))/(n-1) // Heat transfer
Q31 = m*R*(T1+273)*log(P3/P2) // Heat transfer
Q1 = Q12 // Heat equivalance
Q2 = -(Q23+Q31) // Net heat transfer
e = 1-(Q2/Q1) // First law efficiency

printf("\n Example 10.6")
printf("\n The heat received in the cycle is %f kJ",Q1)
printf("\n The heat rejected in the cycle %f kJ",Q2)
printf("\n The efficiency of the cycle is %d percent",ceil(e*100))
//The answers vary due to round off error


