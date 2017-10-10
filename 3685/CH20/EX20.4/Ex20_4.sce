clc
// Given that
T = 20 // Time in minute
F = 680 // Net brake load in N
N = 360 // Speed in rpm
mep = 3 // Mean effective pressure in bar
f = 1.56 // Fuel consumption in kg
m_w = 160 // Cooling water in kg
t = 57 // Water inlet temperature in degree centigrade
r = 30 // Air used per kg of fuel
t_r = 27 // Room temperature in degree centigrade
t_e = 310 // Exhaust gas temperature in degree centigrade
d = 210 // Bore in mm
L = 290 // Stroke in mm
D = 1 // Brake diameter in m
cv = 44 // Calorific value in MJ/kg
m_s = 1.3 // Steam formed per kg fuel in the exhaust in kg
s = 2.093 // Specific heat of steam in the exhaust in kJ/kgK
s_d = 1.01 // Specific heat of dry exhaust gases in kJ/kgK
printf("\n Example 20.4\n")
i_p = mep*100*L*(10^-3)*(%pi/4)*((d*(10^-3))^2)*N/60
b_p = (2*%pi*(F*(D/2))*N)/60000
n_m = b_p / i_p
h = f*cv*1000
i_pe = i_p*T*60
e_w = m_w * 4.187*(t-32)
m_t = f*r + f
m_s_ = m_s*f
m_d = m_t - m_s_
e_d = m_d * s_d * (t_e-t_r)
e_s = m_s_*(4.187*(100-t_r) + 2257.9 +s*(t_e-100))
e_t = e_s + e_d
e_Un = h - (i_pe + e_w + e_t)
printf("\n Indicated power = %f kW\n Brake power = %f kW",i_p,b_p)
printf("\n Energy release by combustion of fuel is %f kJ \n 1. Energy equivalent of ip is %f kJ (%f percent)\n 2. Energy carried away by cooling water is %f kJ (%f percent),\n 3. Energy carried away by exhaust gases is %f kJ (%f percent),\n 4. Unaccounted energy loss (by difference) is %f kJ (%f percent)",h,i_pe,(i_pe/h)*100,e_w,(e_w/h)*100,e_t,(e_t/h)*100,e_Un,(e_Un/h)*100)


