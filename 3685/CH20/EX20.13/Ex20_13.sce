clc
// Given that
Bp = 250 // Power developed by the engine in kW
n = 6 // No of cylinders 
N = 2000 // Speed in rpm
bsfc = 0.2 // Specific fuel consumption in kg/kWh
P = 35 // Pressure at the begining of the injection in bar
p_max = 55 // Maximum cylinder pressure in bar
p = 180 // Expected pressure for injection in bar
P_max = 520 // Maximum pressure at the injection in bar
c_d = 0.78 // Cofficient of discharge
s = 0.85 // Specific gravity of fuel oil
p_atm = 1 // Atmospheric pressure in bar
theta = 18 // Crank angle in degree
printf("\n Example 20.13\n")
Bp_cy = Bp/n
m_f = Bp_cy*bsfc/60 // in kg/min
f_c = m_f*(2/N)
T = theta/(360*(N/60))
delta_p = p-P
delta_p_ = P_max-p_max
avg_delta_p = (delta_p+delta_p_)/2
v = c_d*sqrt((2*(avg_delta_p)*(10^5))/(s*1000))
V = m_f*(10^-3)/(s*1000)
A = V/(v*T)
printf("\n Total orifice area per injector = %f mm^2",A*10^6)



