clc
// Part (a)
P1 = 1 // Initial pressure in bar
P2 = 10 // Final pressure in bar
vf = 0.001043 // specific volume of liquid in m^3/kg
Wrev = vf*(P1-P2)*1e5 // Work done

printf("\n Example 12.1")
printf("\n The work required in saturated liquid form is %f kJ/kg",Wrev/1000)
//The answers vary due to round off error

// Part (b)
h1 = 2675.5 // Enthalpy at state 1 in kJ/kg
s1 = 7.3594 // Entropy at state 1 kJ/kgK
s2 = s1 // Isentropic process
h2 = 3195.5 // Enthalpy at state 2 kJ/kg
Wrev1 = h1-h2 // Work done
printf("\n The work required in saturated vapor form is %d kJ/kg",Wrev1)

