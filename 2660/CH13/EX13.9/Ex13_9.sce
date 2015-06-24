clc
sigma_0 = 50 // pressure at start in MPa
B = 0.9 // width in m
h1 = 0.2 // thickness in m
b = 0.3 // tool bite in m
// At commencement of forging
FL = sigma_0*B*b*(1+(b/(4*h1))) // forging load in MN
// At completion of forging
h2 = 0.1 // thickness in m
sigma_0c = 150 // pressure at completion in MPa
FL2 = sigma_0c*B*b*(1+(b/(4*h2))) // forging load in MN
printf("\n Forging load at start of forging = %0.4f MN\n Forging load at completion of forging = %0.3f MN" , FL , FL2)
