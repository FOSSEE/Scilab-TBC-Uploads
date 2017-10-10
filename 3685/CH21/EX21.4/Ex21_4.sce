clc
// Given that
v = 800 // Speed of aircraft in km/h
h = 10700 // Height of aircraft in m
p0 = 0.24 // Pressure in bar
t0 = -50 // Temperature in degree centigrade
r_p = 10 // Compressor pressure ratio
t03 = 1093 // Max cycle temperature in K
n_ed = 0.9 // Entry duct efficiency
n_c = 0.9 // Isentropic efficiency of compressure
p_ = 0.14 // Stagnation pressure loss in combustion chamber in bar
cv = 43.3 // Calorific value of fuel in MJ/kg
n_C = 0.98 // Combustion efficiency
n_t = 0.92 // Isentropic efficiency of turbine
n_m = 0.98 // Mechanical efficiency of drive
n_j = 0.92 // Jet pipe efficiency
a = 0.08 // Nozzle outlet area in m^2
Cp = 1.005 // Heat capacity of air in kJ/kgK
gama = 1.4 // Ratio of heat capacities for air
Cp_ = 1.15 // Heat capacity for gases in kJ/kgK
gama_ = 1.333 // Ratio of heat capacities for gases
printf("\n Example 21.4\n")
KE = (1/2)*(v*5/18)^2
tr = KE/(1000*Cp)
t01 = tr + (273+t0)
t01_s = (t0+273)+(n_ed*(t01-(t0+273)))
p01 = p0*((t01_s/(t0+273))^(gama/(gama-1)))
t02_s = t01*((r_p)^((gama-1)/gama))
t02 = (t01) + (t02_s-t01)/n_c
p02 = p01*r_p
p03 = p02-p_
t04 = t03 - (Cp*(t02-t01)/(Cp_*n_m))
t04_s = t03-(t03-t04)/n_t
p04 = p03/((t03/t04_s)^(gama_/(gama_-1)))
p_cr = p04*((2/(gama_+1))^(gama_/(gama_-1)))
t05 = t04*(2/(gama_+1))
t05_s = t04-((t04-t05)/n_j)
p05 = p04/((t04/t05_s)^(gama_/(gama_-1)))
R = Cp_*(gama_-1)/gama_
v5 = R*t05/(p05*100)
Vj = sqrt(gama_*R*1000*t05)
m = a*Vj/v5
Mt = m*(Vj-v*(5/18))
Pt = (p05-p0)*a*10^5
Tt = Mt+Pt
Q1 = m*(t03-t02)*Cp_
m_f = Q1/(cv*1000*n_C)
m_sf = m_f*1000/Tt
printf("\n Total thrust developed = %f N,\n The specific fuel consumption = %f kg/kNs",Tt,m_sf)
// The answers given in the book contain round off error.




