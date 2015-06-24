
clc
//initialization of variables
H1 = 75 // henrys constant for ammonia in atm
H2 = 41000 // henrys constant for methane in atm
p = 2.2 // pressure in atm
kya = 18 // product of m.t.c and packing area per tower volume in lb-mol/hr-ft^3
kxa = 530 //product of m.t.c and packing area per tower volume in lb-mol/hr-ft^3
//calcuations
Kya1 = 1/((1/kya) + (H1/p)/kxa) //The overall coefficient for ammonia in lb-mol/hr-ft^3
Kya2 = 1/((1/kya) + (H2/p)/kxa) //The overall coefficient for methane in lb-mol/hr-ft^3
//Results
printf("The overall coefficient for ammonia is %.1f lb-mol/hr-ft^3",Kya1)
printf("\n The overall coefficient for methane is %.2f lb-mol/hr-ft^3",Kya2)
