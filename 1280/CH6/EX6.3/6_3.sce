clc
//initialisation of variables
eo= 87 //percent
ev= 94 //percent
p= 10 //bhpi
//CALCULATIONS
em= eo/ev
em1= em*100
Fhp= p*(1-em)
//RESULTS
printf ('frictional horsepower = %.1f hp',Fhp+0.1)
printf (' \n mechanical efficiency = %.2f percent',em1)
