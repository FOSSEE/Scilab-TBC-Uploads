
clc
// Given that
n=1.3 // Polytropic index
p1 = 140 // Pressure at point one in kN/m^2
p2 = 360 // Pressure at point two in kN/m^2
r_e = 0.4 // Relative efficiency
cv = 18840 // Calorific value in kJ/m^2
printf("\n Example 20.14\n")
r = (((p2/p1)^(1/n))-1)/((0.75-0.25*((p2/p1)^(1/n))))
r_k  = r+1
n_ase = 1-(1/((r_k)^(0.4)))
n_th = r_e*n_ase
V_f = n_th*cv/3600
printf("\n Thermal efficiency = %f percent,\n Gas consumption per kWh on indicated power basis = %f m^3/kWh",n_th*100,V_f)
//The value of answer is different because of round off error


