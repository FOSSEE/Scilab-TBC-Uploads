clc
// Given that
r_c = 3.5 // Compression ratio
n_c = 0.85 // Efficiency of compressor
p1 = 1 // Pressure in bar
t1 = 300 // Temperature in K
t3 = 310 // Temperature at the exit of the intercooler in K
r_c_ = 3.5 // Compression ratio for high pressure compressor
n_c_ = 0.85 // Efficiency of H.P. compressor
e = 0.8 // Effectiveness of regenerator
n_t = 0.88 // Efficiency of H.P. tubine
t6 = 1100 // Temperature in H.P. tubine in K
t8 = 1050 // Temperature at the entrance of L.P. turbine in K
n_t_ = 0.88 // Efficiency of L.P. turbine
Cp = 1.005 // Heat capacity of air in kJ/kgK
Cp_ = 1.15 // Heat capacity of gases in kJ/kgK
gama = 1.4 // Heat capacity ratio for air
gama_ = 1.33 // Heat capacity ratio for gases
printf("\n Example 21.1\n")
p2 = r_c*p1
p4 = p2*r_c_
t2_s = t1*((r_c)^((gama-1)/gama))
t2 = t1+((t2_s-t1)/n_c)
t4_s = t3*((r_c_)^((gama-1)/gama))
t4 = t3+((t4_s-t3)/n_c_)
Wc = Cp*((t2-t1)+(t4-t3))
t7 = t6 - (Wc/Cp_)
t7_s = t6 - (t6-t7)/n_t
r_p = (t6/t7_s)^(gama_/(gama_-1))
p7 = p4/r_p
t9_s = t8/((p7/p1)^((gama_-1)/gama_))
t9 = t8-(t8-t9_s)*n_t_
Wt_LP = Cp_*(t8-t9)
W_T = Wt_LP+Wc
Rw = Wt_LP/W_T
Q1 = (Cp_*t6-Cp*t4)+Cp_*(t8-t7)
n_plant = Wt_LP/Q1
printf("\n Power output = %f kJ/kg,\n The overall efficiency = %f percent",W_T,n_plant*100)
//The answers given in the book have round off error




