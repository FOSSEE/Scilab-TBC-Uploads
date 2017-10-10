clc
// Given that
te = -10 // Evaporator temperature in degree celsius
pc = 7.675 // Condenser pressure in bar
pf = 4.139 // Flash chamber pressure in bar
P = 100 // Power input to compressor in kW
printf("\n Example 14.6\n")
// From the property table of R-134a,
h7 = 140.96 // In kJ/kg
hf = 113.29 // In kJ/kg
hfg = 300.5-113.29 // In kJ/kg
hg = 300.5 // In kJ/kg
h1 = 288.86 // In kJ/kg
s1 = 1.17189 // // In kJ/kgK
s2 =s1
//By interpolation 
h2 = 303.468 // In kJ/kg
x8 = (h7-hf)/hfg
m1=x8
h5 = (1-m1)*h2 + m1*hg
// By interpolation
s5 = 1.7174 // In kJ/kgK
s6=s5
h6 = 315.79 // In kJ/kg
m = P/((h6-h5) + (1-m1)*(h2-h1))
m_e = (1-m1)*m
COP = m_e*(h1-hf)/P
printf("\n The COP of the plant is %f, \n The mass flow rate of refrigerant in the evaporator is %f kg/s",COP,m_e)


