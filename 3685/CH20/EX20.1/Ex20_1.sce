clc
// Given that
d = 6.5// Diametre in cm
L = 9.5 // Stroke in cm
T = 64 // Torque in Nm
N = 3000 // Speed in rpm
V_c = 63 // Clearance volume in cm^3
r = 0.5 // Brake efficiency ratio
c_v = 42 // Calorific value of gasoline in MJ/kg
printf("\n Example 20.1\n")
V_s = (%pi/4)*(d^2)*(L)
r_k = (V_s+V_c)/V_c
n_as = 1- (1/(r_k^(0.4)))
n_b = r*n_as
BP = (2*%pi*T*N)/60000
m_f = (BP*3600)/(n_b*c_v*1000)// in kg/h
BMEP = BP*60*2/((%pi/4)*4*(d^2)*L*N*10^(-6))
printf("\n Fuel consumption of the engine = %f Kg/h\n BMEP=%f kN/m^2",m_f,BMEP)
//The answers vary due to round off error

