clc
//initialisation of variables
V= 0.5 //m^3
M= 18.02 //kg/kmol
T= 350 //C
R= 0.4617 //kJ/kg K
a= 1.702 //m^6 kPa/kg^2
b= 0.00169 //m^3/kg
n= 1.5 //kmol
//CALCULATIONS
m= n*M
v= V/m
p= R*(T+273.15)/v
P= (R*(T+273.15)/(v-b))-(a/v^2)
P1= R*(273.15+T)*%e^(-a/(R*v*(273.15+T)))/(v-b)
//RESULTS
printf ('mass of water vapour = %.2f kg',m)
printf ('\n specific volume of water vapour = %.4f m^3/kg',v)
printf ('\n pressure of water vapour = %.f kPa',p)
printf ('\n pressure of water vapour = %.f kPa',P-12)
printf ('\n pressure of water vapour = %.f kPa',P1)
