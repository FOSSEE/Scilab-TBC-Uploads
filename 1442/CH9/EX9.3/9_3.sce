clc
//initialisation of variables
m= 4 //kg/s
R= 8.314 //J/mol K
M= 29 //gms
k= 1.4
T1= 27 //C
p2= 1800 //kPa
p1= 105 //kPa
n= 1.22
cp= 1.4 //Jmol K
//CALCULATIONS
T2= (273.15+T1)*(p2/p1)^((n-1)/n)
W= m*k*(R/M)*((273.15+T1)/(k-1))*(1-(p2/p1))^((k-1)/k)
Q= -m*R*(273.15+T1)*log(p2/p1)/M
W1= m*(R/M)*n*((273.15+T1)/(n-1))*(1-(p2/p1)^((n-1)/n))
Q1= m*(R/M)*(n-k)*(T2-T1-273.15)/((n-1)*(k-1))
T3= (273.15+T1)*(p2/p1)^((k-1)/(2*k))
Q2= m*cp*(R/M)*(T1+273.15-T3)/(k-1)
//RESULTS
printf (' heat removed in adiabatic compression = %.1f kW',W)
printf (' \n heat removed in isothermal compression = %.1f kW',Q)
printf (' \n heat removed in polytropic process = %.1f kW',Q1)
printf (' \n heat removed in adiabatic compression in two stages = %.1f kW',Q2)
