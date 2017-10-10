clc
// Given that
v = 5 // Volume flow rate in m^3/s
d = 1 // Mean impeller diameter in m
D = 0.6 // Hub diameter in m
N = 600 // Rotational speed in RPM
h = 35 // Theoratical head in mm
rho = 1.2 // Density of air in kg/m^3
rho_w = 1000 // Density of water in kg/m^3
printf("\n Example 19.23\n")
Vf = v*4/(%pi*(d^2 - D^2))
Vb = (%pi*d*N/60)
Vb_ = (%pi*D*N/60)
H = h/rho
Vw2 = H*9.81/(Vb)
Vw2_ = H*9.81/(Vb_)
beta_tip = atand(Vf/(Vb-Vw2))
beta_hub = atand(Vf/(Vb_-Vw2_))
printf("\n Blade angle at the tip = %f degree,\n Blade angle at the hub = %f degree",beta_tip,beta_hub)
// The answers given in the book vary because of round off error
 
