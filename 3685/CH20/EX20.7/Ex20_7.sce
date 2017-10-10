clc
// Given that
Bp = 110 // Brake power in kW
n_m = 0.8 // Mechanical efficiency of the engine
m_f = 50 // Fuel required for engine in kg/h
r_f = 5 // Reduced engine friction in kW
printf("\n Example 20.7\n")
Ip = Bp/n_m
Fp = Ip-Bp
Fp_n = Fp-r_f
Ip_new = Bp + Fp_n
m_f_new = Ip_new * m_f/ Ip
s_f = m_f- m_f_new
printf("\nSaving in fuel = %f kg/h",s_f)



