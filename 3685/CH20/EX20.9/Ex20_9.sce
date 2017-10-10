clc
// Given that
Bp = 28.35 // Brake power in kW
N = 1500 // Speed in rpm
x = 20 // Rich percent of mixture
t = 15.5 // Temperature in degree centrigrde
p = 760 // Pressure in mm of mercury
f = 0.7 // Fraction of volume of air in th cylinder relative to swept volume
R = 14.8 // Theoratical Air fuel ratio
d = 82 // Diameter of cylinder in mm
L = 130 // Stroke of cylinder in mm
cv = 44 // Heating value of petrol in MJ/kg
n_m = 0.9 // Mechanical efficiency of the engine
printf("\n Example 20.9\n")
Ip = Bp/n_m
p_ = 101.325 // In kN/m^2 as p = 760 mm mercury
v_a = f*(%pi/4)*((d*(10^-3))^2)*(L*(10^-3))*(N/2)*4
m = p_*(v_a)/(0.287*(t+273))
m_f = (m/R)*(1+x/100)
n_th = Ip*3600/(m_f*cv*1000*60)
bmep = Bp*60/((%pi/4)*((d*(10^-3))^2)*(L*10^-3)*(N/2)*4)
printf("\n Indicated thermal efficiency = %f percent,\n Brake mean effective preassure = %f kN/m^2",n_th*100,bmep)
//The value of  answer is different because of round off error



