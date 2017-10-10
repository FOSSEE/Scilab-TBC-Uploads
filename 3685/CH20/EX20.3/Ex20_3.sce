clc
// Given that
F = 680 // Net brake load in N
N = 360 // 
d = 10// Bore in cm
L = 15 // Stroke in cm
T = 58 // Torque in Nm
v = 300 // Speed in m/min
n_m = 0.8 // Mechanical efficiency
n_th = 0.4 // Indicated thermal efficiency
c_v = 44 // Calorific value of gasoline in MJ/kg
printf("\n Example 20.3\n")
N = v/(2*L*(10^(-2)))
BP = (2*%pi*T*N)/60000
IP = BP/n_m
p_m = (IP*60)/(L*(%pi/4)*(d^2)*N*10^(-6))
m_f = (IP*3600)/(n_th*c_v*1000)
bsfc = m_f/BP
printf("\n Indicated power = %f kW\n Indicate mean effective pressure = %f kN/m^2\n  Fuel consumption per kWh on brake power output = %f Kg/kWh",IP,p_m,bsfc)


