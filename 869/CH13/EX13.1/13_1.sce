clc
//initialisation of variables
E= 1.5*10^6
F1= -100 //lb
F2= -100 //lb
x1= 6 //in
x2= 6 //in
Ina= 64 //in^4
h1= -600 //lb ft
h2= -1200 //lb ft
xa1= 10 // in
xa2= 8 //in
//CALCULATIONS
deltamax= ((1/2)*x1*xa1*h1+(1/2)*(x1+x2)*h2*xa2)*(1728)/(E*Ina)
//RESULTS
printf ('maximum deflection= %.2f in',deltamax)
