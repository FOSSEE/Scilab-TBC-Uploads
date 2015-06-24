
clc
//initialization of variables
p1 = 10 // pressure in atm
H = 600 // henrys constant in atm
c1 = 0 // gmol/cc
N1 = 2.3*10^-6 // mass flux in mol/cm^2-sec
c = 1/18 //total Concentration in g-mol/cc
D = 1.9*10^-5 // Diffusion co efficient in cm^2/sec
//Calculations
c1i = (p1/H)*c // Component concentration in gmol/cc
k = N1/(c1i-c1)//Mass transfer co efficient in cm/sec
l = D/k // Film thickness in cm
//Results
printf("The film thickness is %.5f cm",l)

