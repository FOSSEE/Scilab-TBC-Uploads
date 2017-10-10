clc
// Given that
// Four cylinder engine
BP = 30 // Power developed by engine in kW
N = 2500 // Speed in rpm
P_m = 800 // Mean effective pressure for each cylinder in kN/m^2
n_m = 0.8 // Mechanical efficiency
r = 1.5 // Stroke to bore ratio
n_b = 0.28 // Brake thermal efficiency
c_v = 44 // Heating value of petrol in MJ/kg
printf("\n Example 20.2\n")
IP = BP/n_m
d = ((IP*1000*60)/(P_m*1000*r*(%pi/4)*N*4))^(1/3)
L = r*d
m_f = BP/(c_v*1000*n_b)
bsfc = m_f*3600/BP
printf("\n Diameter of cylinder = %f cm\n Stroke of each cylinder = %f cm\n Brake specific fuel consumption = %f kg/kWh",d*10^2,L*100,bsfc)


