clc
// Given that
p1 = 0.56 // Ambient pressure in bar
t1 = 260 // Ambient temperature in K
r_p = 6 // Pressure ratio of compressor
n_c = 0.85 // Efficiency of compressor
v = 360 // Speed of aircraft in km/h
d = 3 // Propeller diameter in m
n_p = 0.8 // Propeller efficiency
n_g = 0.95 // Gear reduction efficiency
r_e = 5 // Expansion ratio
n_t = 0.88 // Turbine efficiency
t3 = 1100 // Temperature at the entrance of turbine in K
n_n = 0.9 // Nozzle efficiency
cv = 40 // Calorific value in MJ/kg
printf("\n Example 21.6\n")
gama = 1.4 // Heat capacities ratio for air
Vo = v*(5/18)
p2 = p1*r_p
t2_s = t1*((r_p)^(0.286))
t2 = t1+((t2_s-t1)/n_c)
Cp = 1.005 // The value of heat capacity of air as given in the book in kJ/kgK
Wc = Cp*(t2-t1)
m_f = (t3-t2)/((cv*1000/Cp)-t3)
m_a = 1/m_f
p3=p2
p4 = p3/r_e
t4_s = t3/((r_e)^(0.286))
t4 = t3-((t3-t4_s)*n_t)
Wt = (1+m_f)*(t3-t4)*Cp
Pp = Wt-Wc
p5 = p1
t5_s = t4/((p4/p5)^((gama-1)/gama))
Vj = sqrt(2*Cp*1000*(t4-t5_s)*n_n)
Ft = (1+m_f)*Vj-1*Vo
V = Vo/n_p
V4 = 2*V-Vo
Q = (%pi/4)*(d^2)*V
Pt = (1/2)*(p1*(10^5)/(287*t1))*Q*((V4^2)-(Vo^2))/1000
PT = Pt/n_g
ma_c = PT/Pp
Fp = Pt*n_p/V
printf("\n Air-fuel ratio = %f,\n Thrust power of the propeller = %f kJ/s ,\n Thrust by the propeller = %f kN,\n Mass flow rate of air flowing through the compressor = %f kg/s,",m_a,Pt,Fp,ma_c)
// The answers are given in the book contain calculation error.



