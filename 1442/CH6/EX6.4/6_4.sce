clc
//initialisation of variables
h4= 419.05 //kJ/kg
h1= 434.92 //kJ/kg
m= 2.5 //kg/s
h2= 3272.4 //kJ/kg
h3= 2601.7 //kJ/kg
v1= 0.001401 //m^3/kg
V1= 5 //m/s
v2= 0.03817 //m^3/kg
V2= 20 //m/s
v3= 0.8415 //m^3/kg
V3= 100 //m/s
v4= 0.00104 //m^3/kg
V4= 5 //m/s
//CALCULATIONS
W41= m*(h4-h1)
Q12= m*(h2-h1)
W23= m*(h2-h3)
Q34= m*(h4-h3)
A1= m*v1*10^4/V1
A2= m*v2*10^4/V2
A3= m*v3*10^4/V3
A4= m*v4*10^4/V4
//RESULTS
printf (' rate of pump = %.1f kW',W41)
printf (' \n rate of heat ineraction = %.f kW',Q12)
printf (' \n rate of work of the turbine = %.1f W',W23)
printf (' \n rate of heat ineraction = %.f kW',Q34)
printf (' \n area = %.2f cm^2',A1)
printf (' \n area = %.2f cm^2',A2)
printf (' \n area = %.2f cm^2',A3)
printf (' \n area = %.2f cm^2',A4)
