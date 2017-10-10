clc
cv = 0.718 // Specific heat capacity of air in kJ/kg
T2 = 500 // Final temperature of air in K
T1 = 300// Initial temperature of air in K
m = 1 // Mass of air in kg
T0 = 300 // Ambient temperature
// Case (a)
printf("\n Example 8.17")
Sua = cv*log(T2/T1) // Entropy change of universe
Ia = T0*Sua // irreversibility
printf("\n The irreversibility in case a is %f kJ/kg",Ia)

// Case (b)
Q = m*cv*(T2-T1) // Heat transfer
T = 600 // Temperature of thermal reservoir in K
Sub = Sua-(Q/T) // Entropy change of universe
Ib = T0*Sub // irreversibility
printf("\n The irreversibility in case b is %f kJ/kg",Ib)
//The answers vary due to round off error

