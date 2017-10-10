clc
// Given that
d = 180 // Bore in mm
L = 200 // Stroke in mm
Bp = 245 // Brake power in kW
N = 1500 // Speed in rpm
mep = 8 // Mean effective pressure in bar
m_f = 70 // Fuel consumption in kg/h
cv = 42 // Heating value of fuel in MJ/kg
m_h = 0.12 // Fraction of hydrogen content by mass
m_a = 26 // Air consumption in kg/min
m_w = 82 // Mass of cooling water in kg/min
delta_t = 44 // Cooling water temperature rise in degree centigrade
m_o = 50 // Cooling oil circulated through the engine in kg/min
delta_T = 24 // Cooling oil temperature rise in degree centigrade
s_o = 2.1 // Specific heat of cooling oil in kJ/kgK
t = 30 // Room temperature in degree centigrade
t_e = 400 // Exhaust gas temperature on degree centigrade
c_p_de = 1.045 // Heat capacity of dry exhaust gas in kJ/kgK
p = 0.035 // Partial pressure of steam in exhaust gas in bar
printf("\n Example 20.15\n")
h = m_f*cv*1000/3600
Ip = mep*(10^5)*L*(10^-3)*(%pi/4)*((d*(10^-3))^2)*N*6/(2*60000)
n_m = Bp/Ip
h_w = (m_w/60)*(4.187*delta_t)
h_o = (m_o/60)*(s_o*delta_T)
m_e = m_f/60 + m_a
m_v = m_h*9*(m_f/60)
m_de = (m_e-m_v)/60
H = 3060 // From the steam table the enthalpy of steam at the exhaust condition (0.035 bar) in kJ/kg
h_s = (m_v/60)*H
h_de = (m_de)*(c_p_de)*(t_e-t)
h_su = h - (Bp+h_w+h_s+h_o+h_de)
printf("\n Mechanical efficiency = %f percent",n_m*100)
printf("\n                  Energy Balance")
printf("\n                                 Input          Output")
printf("\n Heat supplied by fuel           %f kW    -",h)
printf("\n Useful work(BP)                   -            %d kW",Bp)
printf("\n Heat carried by cooling water     -            %f kW",h_w)
printf("\n Heat carried by steam             -            %f kW",h_s)
printf("\n Heat carried by cooling oil       -            %f kW",h_o)
printf("\n Heat carried by dry exhaust gas   -            %f kW",h_de)
printf("\n Heat transferred to surroundings  -            %f kW",h_su)

