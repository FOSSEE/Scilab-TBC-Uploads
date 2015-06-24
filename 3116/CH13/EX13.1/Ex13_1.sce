

clc
// Given that
m1 = 7500 // Mean molecular weight in g/mol
m2 = 12500 // Mean molecular weight in g/mol
m3 = 17500 // Mean molecular weight in g/mol
m4 = 22500 // Mean molecular weight in g/mol
m5 = 27500 // Mean molecular weight in g/mol
m6 = 32500 // Mean molecular weight in g/mol
m7 = 37500 // Mean molecular weight in g/mol
x1 = 0.05 // Mole fraction
x2 = 0.16 // Mole fraction
x3 = 0.22 // Mole fraction
x4 = 0.27 // Mole fraction
x5 = 0.20 // Mole fraction
x6 = 0.08 // Mole fraction
x7 = 0.02 // Mole fraction
w1 = 0.02 // weight fraction
w2 = 0.10// weight fraction
w3 = 0.18// weight fraction
w4 = 0.29// weight fraction
w5 = 0.26// weight fraction
w6 = 0.13// weight fraction
w7 = 0.02// weight fraction
m_c = 12.01 // molar mass of carbon in gram/mole
m_h = 1.01 // molar mass of hydrogen in gram/mole
m_cl = 35.45 // molar mass of chlorine in gram/mole

printf("\n Problem 13.1")
printf("\n Part A:")
M_n = m1*x1+m2*x2+m3*x3+m4*x4+m5*x5+m6*x6+m7*x7
printf("\n The number average molecular weight is %d gram/mol",M_n)
printf("\n\n Part B:")
m = 2*m_c+3*m_h+1*m_cl // Mass of repeating unit
DP = M_n/m
printf("\n The degree of polimarization is %d ",DP)
printf("\n\n Part C:")
M_w = m1*w1+m2*w2+m3*w3+m4*w4+m5*w5+m6*w6+m7*w7
printf("\n The weight average molecular weight is %d gram/mol",M_w)

