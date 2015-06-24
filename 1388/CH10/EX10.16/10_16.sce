  clc
//initialisation of variables
H= 41300
R= 1.987 //atm lit/mol K
T= 595 //K
M= 128 //gm
R1= 8.314*10^7 //atm lit/mol K
N= 6.02*10^23 //moleccules
k= 3.95*10^-6 //sec^-1
//CALCULATIONS
s= sqrt((k*10^3/(4*N))*(128/(%pi*R1*T))^0.5*%e^(H/(R*T)))
//RESULTS
printf (' collision diameter= %.3e cm',s)
