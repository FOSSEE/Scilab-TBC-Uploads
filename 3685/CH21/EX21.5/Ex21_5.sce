clc
// Given that
v = 850 // Speed of turbojet in km/h
m = 50 // Air mass flow rate in kg/s
s = 200 // Entropy drop across the nozzle in kJ/kg
n_n = 0.9 // Nozzle efficiency
r = 80 // Air fuel ratio
cv = 40 // Heating value of fuel in MJ/kg
Cp = 1005 // Heat capacity of air in J/kgK
printf("\n Example 21.5\n")
Vo = v*(5/18)
m_f = m/r
Ve = sqrt(2*Cp*s*n_n)
T = (m+m_f)*Ve-m*Vo
TP = T*Vo
PP = (1/2)*(m+m_f)*(Ve^2)-(1/2)*(m*Vo^2)
n_p = TP/PP
n_t = PP/(m_f*cv*1000000)
n = n_t*n_p
printf("\n Propulsive power = %f MW,\n Thrust power = %f kW,\n Propulsive efficiency = %f percent\n Thermal efficiency = %f percent,\n Overall efficiency = %f percent ",PP*(10^-6),TP*(10^-3),n_p*100,n_t*100,n*100)




