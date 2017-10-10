clc
// Given that
Bp = 40 // Brake power when all cylinder operating in kW
N = 2000 // Speed in rpm
Bp1 = 32.2 // Brake power with cylinder no. 1 cut out in kW
Bp2 = 32 // Brake power with cylinder no. 2 cut out in kW
Bp3 = 32.5 // Brake power with cylinder no. 3 cut out in kW
Bp4 = 32.4 // Brake power with cylinder no. 4 cut out in kW
Bp5 = 32.1 // Brake power with cylinder no. 5 cut out in kW
Bp6 = 32.3 // Brake power with cylinder no. 6 cut out in kW
d = 100 // Diameter of cylinder in mm
L = 125 // Stroke of cylinder in mm
Vc = 0.000123 // Clearance volume in m^3
m_f = 9 // Fuel consumption in kg/h
cv = 40 // Heating value in MJ/kg
printf("\n Example 20.11\n")
Ip1 = Bp-Bp1
Ip2 = Bp-Bp2
Ip3 = Bp-Bp3
Ip4 = Bp-Bp4
Ip5 = Bp-Bp5
Ip6 = Bp-Bp6
Ip = Ip1+Ip2+Ip3+Ip4+Ip5+Ip6
n_m = Bp/Ip
bmep = Bp*2*60/(L*(10^-3)*((d*(10^-3))^2)*(%pi/4)*N)
Vs = (%pi/4)*((d*(10^-3))^2)*(L*(10^-3))
r_k = (Vs+Vc)/Vc
n_ase = 1- (1/(r_k^(1.4-1)))
n_th = Ip*3600/(m_f*cv*1000)
R_e = n_th/n_ase
printf("\n Mechanical efficiency = %d percent,\n Brake mean effective pressure = %f bar\n Air standard ratio = %f percent,\n Brake thermal efficiency is %f percent,\n Relative efficiency = %f percent",n_m*100,bmep*(10^-2),n_ase*100,n_th*100,R_e*100)
//The value of  answer for air standard efficiency is different because of round off error
// Answer given in the book for bmep is 3.055 bar which is wrong.
// Answer given in the book for brake thermal efficiency is 40 percent which is wrong.
// Answer given in the book for relative efficiency is 68.6 percent which is wrong.



