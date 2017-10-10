
clc
// Given that
Pc = 2.4 // Pressure in combustion chamber in MPa
Tc = 3170 // Temperature in combustion chamber in K
Pj = 55 // Atmospheric pressure in kPa
Pe = 85 // Pressure at the exit of nozzle in kPa
At = 0.06 // Area at the nozzle throat in m^2
n_n = 0.91 // Nozzle efficiency
Cd = 0.98 // Coefficient of discharge
gama = 1.25 // Heat capacities ratio for gases
R = 0.693 // Value of gas constant in kJ/kgK
theta = 12 // Half angle of divergence in degree
printf("\n Example 21.8\n")
Vj = sqrt((2*gama*R*1000*Tc/(gama-1))*(1-(Pj/(Pc*1000))^((gama-1)/gama)))
Vj_act = ((1+cosd(12))/2)*Vj*sqrt(n_n)
m = At*Pc*(10^6)*((gama/(R*1000*Tc))*(2/(gama+1))^((gama+1)/(gama-1)))^(1/2)
m_act = Cd*m
Ae = m/(Pe*Vj)
Ft = m*Vj+Ae*(Pe-Pj)*1000
SIm = Ft/m_act
printf("\n Thrust produced = %f kN,\n Specific impulse = %f Ns/kg",Ft*0.001,SIm)
// The answers are given in the book contain calculation error.
