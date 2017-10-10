clc
// Given that
F = 610 // Net brake load in N
N = 350 // Speed in rpm
d = 20 // Bore in cm
L = 30 // Stroke in cm
imep = 275 // Mean effective pressure in kN/m^2
D = 1 // Brake diameter in m
m_o = 4.25 // Oil consumption in kg/h
cv = 44 // Calorific value in MJ/kg
printf("\n Example 20.5\n")
i_p = imep*1000*L*(10^-2)*(%pi/4)*((d*(10^-2))^2)*N/60000
b_p = (2*%pi*(F*(D/2))*N)/60000
n_m = b_p / i_p
n_th = i_p *3600/(m_o*cv*1000)
n_br = n_th*n_m
printf("\n Indicated power = %f kW\n Brake power = %f kW\n Mechanical efficiency = %f percent,\n Indicated thermal efficiency = %f percent,\n Brake thermal efficiency = %f percent",i_p,b_p,n_m*100,n_th*100,n_br*100)



