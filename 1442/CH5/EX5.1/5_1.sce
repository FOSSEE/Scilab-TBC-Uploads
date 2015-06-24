clc
//initialisation of variables
R= 8.314 //J/mol K
M= 18.016 //gms
T= 400 //C
p= 0.01 //Mpa
p1= 0.1 //Mpa
p2= 20 //Mpa
//CALCULATIONS
v= R*(273.156+T)/(M*p*1000)
v1= R*(273.156+T)/(M*p1*1000)
v2= R*(273.156+T)/(M*p2*1000)
//RESULTS
printf (' specific voulme = %.3f m^3/kg',v)
printf (' \n specific voulme = %.3f m^3/kg',v1)
printf (' \n specific voulme = %.3f m^3/kg',v2)
