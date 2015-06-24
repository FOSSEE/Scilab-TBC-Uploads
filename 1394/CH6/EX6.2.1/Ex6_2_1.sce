
clc
//initialization of variables
pKa = 4.756
DH = 9.31*10^-5 // cm^2/sec
DCH3COO = 1.09*10^-5 //cm^2/sec
D2 = 1.80*10^-5 //cm^2/sec
Ct = 10 // moles/lit
//Calculations
K = 10^pKa // litres/mol
D1 = 2/((1/DH)+(1/DCH3COO))
D = 2/((1/D1)+(1/D2))*10^5// Diffusion co efficient in x*10^-5 cm^2/sec
//Results
printf("The diffusion coefficient of acetic acid in water is %.1f x10^-5 cm^2/sec",D)
