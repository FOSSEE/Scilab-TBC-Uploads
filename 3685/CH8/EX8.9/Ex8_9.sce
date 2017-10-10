clc
T2 = 790 // Final temperature of gas in degree Celsius
T1 = 800 // Initial temperature of gas in degree Celsius
m = 2 // Mass flow rate in kg/s
cp = 1.1 // Specific heat capacity in kJ/KgK
T0 = 300 // Ambient temperature in K

printf("\n Example 8.9")
I = m*cp*(((T1+273)-(T2+273))-T0*(log((T1+273)/(T2+273)))) // irreversibility rate
printf("\n The irreversibility rate is %f kW",I)

// At lower temperature
T1_ = 80 // Initial temperature of gas in degree Celsius
T2_ = 70 // Initial temperature of gas in degree Celsius
I_ = m*cp*(((T1_+273)-(T2_+273))-T0*(log((T1_+273)/(T2_+273)))) // irreversibility rate
printf("\n The irreversibility rate at lower temperature is %f kW",I_)
//The answers vary due to round off error

