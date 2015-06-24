clc
//initialisation of variables
V= 20 //L
m= 0.050 //gms
M= 29 //gms
T1= 20 //C
T2= 150 //C
k= 1.4
V1= 0.05 //m^3
//CALCULATIONS
p1= m*R*(273.15+T1)/(M*(V/10))
p2= m*R*(273.15+T2)/(M*(V/10))
dU= p1*V1*(((273.15+T2)/(273.15+T1))-1)*100/(k-1)
dH= k*dU
//RESULTS
printf (' intial pressure = %.1f kPa',p1)
printf (' \n final pressure = %.1f kPa',p2)
printf (' \n internal energy = %.2f kJ',dU)
printf (' \n enthalpy = %.2f kJ',dH)
