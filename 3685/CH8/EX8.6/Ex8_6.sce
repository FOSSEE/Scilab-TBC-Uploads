clc
T1_ = 80 // Initial temperature of air in degree Celsius 
T2_ = 5 // Final temperature of air in degree Celsius 
V2 = 2 // Assumed final volume
V1 = 1 // Assumed initial volume
P0 = 100 // Final pressure of air in kPa
P1 = 500 // Initial pressure of air in kPa
R = 0.287 // Gas constant
cv = 0.718 // Specific heat capacity at constant volume for gas in kJ/kg K
m = 2 // Mass of gas in kg
printf("\n Example 8.6")
T1= T1_+273 // Initial temperature of air in K 
T2 = T2_+273 // Final temperature of air in K 
S = integrate('(m*cv)/T','T',T1,T2) + integrate('(m*R)/V','V',V1,V2) // Entropy change
U = m*cv*(T1-T2)// Change in internal energy
Wmax = U-(T2*(-S)) // Maximum possible work
V1_ = (m*R*T1)/P1 // volume calculation
CA = Wmax-P0*(V1_) // Change in availability
I = T2*S // Irreversibility
printf("\n The maximum work is %f kJ",Wmax)
printf("\n Change in availability is %f kJ",CA)
printf("\n Irreversibility is %f kJ",I)
//The answers vary due to round off error

