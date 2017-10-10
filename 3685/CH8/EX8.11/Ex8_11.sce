clc
m1 = 2 // Flow rate of water in kg/s
m2 = 1 // Flow rate of another stream in kg/s
T1 = 90 // Temperature of water in degree Celsius
T2 = 30// Temperature of another stream in degree Celsius
T0 =300 // Ambient temperature in K
cp = 4.187 // Specific heat capacity of water in kJ/kgK

printf("\n Example 8.11")
m = m1+m2 // Net mass flow rate
x = m1/m // mass fraction
t = (T2+273)/(T1+273) // Temperature ratio
Sgen = m*cp*log((x+t*(1-x))/(t^(1-x))) // Entropy generation
I = T0*Sgen // Irreversibility production
// Alternatively
T  = (m1*T1+m2*T2)/(m1+m2) // equilibrium temperature
Sgen1 = m1*cp*log((T+273)/(T1+273))+m2*cp*log((T+273)/(T2+273))// Entropy generation
I1 = T0*Sgen1 // Irreversibility production
printf("\n The rate of entropy generation is %f kW/K",Sgen)
printf("\n The rate of energy loss due to mixing is %f kW",I)
printf("\n The rate of energy loss due to mixing is %f kW",I1) // Calculation from alternative way
//The answers vary due to round off error

