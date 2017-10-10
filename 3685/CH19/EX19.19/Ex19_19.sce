clc
// Given that
N = 264 // Speed in RPS
sigma = 0.91 // Slip factor
d = 0.482 // Impeller diameter in m
D = 0.306 // Impeller eye diameter
D_ = 0.153 // Impeller root eye diameter in m
vf = 138 // Uniform axial inlet velocity in m/s
V = 1.2 // Volume flow rate of free air in m^3/s
m = 9.1 // Air mass flow rate in kg/s
T1 = 294 // Inlet air stagnation temperature in K
n_iso = 0.8 // Total head isentropic efficiency
n_mech = 0.98 // Mechanical efficiency
gama = 1.4 // Ratio of heat capacities
cp = 1.006 // Heat capacity in kJ/kgK
printf("\n Example 19.19\n")
Wc = m*sigma*(2*%pi*d*N/2)/1000
P_e = Wc/n_mech
delta_T = Wc/(m*cp)
delta_T_ideal = delta_T*n_iso
T2_i = delta_T_ideal + T1
r = (T2_i/T1)^(gama/(gama-1)) // Where r = p02/p01
Vb = 2*%pi*N*D/2
V_er = (2*%pi*N*D_/2)
beta1 = atand(vf/Vb)
beta2 = atand(vf/V_er)
beta1_ = (beta1 - floor(beta1))*60
beta2_ = (beta2 - floor(beta2))*60
printf("\n Total head pressure ratio = %f, \n The required power at input shaft = %f kW,\n Inlet angle at the root = %d degree and %d minute,\n Inlet angle at the tip = %d degree and %d minute",r,P_e,floor(beta1),beta1_,floor(beta2),beta2_)
// The answers given in the book for total head pressure ratio and required power at input shaft contain calculation error
 
