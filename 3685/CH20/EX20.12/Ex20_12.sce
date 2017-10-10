clc
// Given that
p1 = 0.95 // Pressure in bar
t1 = 25 // Temperature in degree centigrade
p2 = 2 // Delivery pressure in bar
r = 18 // Air fuel ratio
t3 = 600 // Temperature of gasses leaving the engine in degree centigrade
p3 = 1.8 // Pressure of gasses leaving the engine in bar
p4 = 1.04 // Pressure at the inlet of turbine in bar
n_c = 0.75 // Efficiency of compresor
n_t = 0.85 // Efficiency of turbine
Cp = 1.005 // Heat capacity of air in kJ/kgK
Cp_ = 1.15 // Heat capacity of gasses in kJ/kgK
gama = 1.4 // Adiabatic index for air
printf("\n Example 20.12\n")
T2_s = (t1+273)*(p2/p1)^((gama-1)/gama)
T2 = (t1+273)+((T2_s-(t1+273))/n_c)
Wc = Cp*(T2-(t1+273))
T4_s = (t3+273)*((p4/p3)^((gama-1)/gama))
T4 = (t3+273)-((t3+273)-T4_s)*n_t
Wt = (1+(1/r))*Cp_*((t3+273)-T4)
n = (Wt-Wc)/Wt
printf("\n Power lost as a percentage of the power produced by the turbine = %f percent",n*100)



