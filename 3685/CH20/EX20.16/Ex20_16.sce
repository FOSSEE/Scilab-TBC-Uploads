clc
// Given that
N = 3000 // Speed in rpm
T = 66.5 // Torque in Nm
d = 60 // Bore in mm
L = 100 // Stroke in mm
Vc = 60 // Clearance volume in cc
r_e = 0.5 // Relative efficiency
cv = 42 // Calorific value in MJ/kg
printf("\n Example 20.16\n")
Vs = (%pi/4)*((60*(10^-3))^2)*(L*(10^-3))
r_k = (Vs+(Vc*(10^-6)))/(Vc*(10^-6))
n_ase = 1-(1/(r_k^(0.4)))
n_br = n_ase*r_e
Bp = (2*(%pi)*T*N)/(60000)
m_f = Bp*3600/(cv*1000*n_br)
bmep = Bp*60000/(Vs*(N/2))
printf("\n Fuel consumption = %f kg/h,\n Brake mean effective pressure = %f bar",m_f,bmep*(10^-5))
//The answer given in the book for bmep has calculation error
// The answer has round off error for fuel consumption




