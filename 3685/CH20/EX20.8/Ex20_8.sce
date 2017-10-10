clc
// Given that
Bp = 14.7 // Brake power when all cylinder operating in kW
Bp1 = 10.14 // Brake power with cylinder no. 1 cut out in kW
Bp2 = 10.3 // Brake power with cylinder no. 2 cut out in kW
Bp3 = 10.36 // Brake power with cylinder no. 3 cut out in kW
Bp4 = 10.21 // Brake power with cylinder no. 4 cut out in kW
m_f = 5.5 // Fuel consumption in kg/h
cv = 42 // Calorific value MJ/kg
d = 8 // Diameter of cylinder in cm
L = 10 // Stroke of cylinder in cm
Vc = 0.1 // Clearance volume in litre
printf("\n Example 20.8\n")
Ip1 = Bp-Bp1
Ip2 = Bp-Bp2
Ip3 = Bp-Bp3
Ip4 = Bp-Bp4
Ip = Ip1+Ip2+Ip3+Ip4
n_m = Bp/Ip
Vs = (%pi/4)*((d*(10^-2))^2)*(L*(10^-2))
r_k = (Vs+(Vc*(10^-3)))/(Vc*(10^-3))
n_ase = 1- (1/(r_k^(1.4-1)))
n_th = Ip*3600/(m_f*cv*1000)
R_e = n_th/n_ase
printf("\n Mechanical efficiency = %f percent,\n Relative efficiency on indicated power basis = %f percent",n_m*100,R_e*100)
//The value of  answer is different because of round off error



