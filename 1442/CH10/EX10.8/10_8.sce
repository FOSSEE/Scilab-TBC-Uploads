clc
//initialisation of variables
h3= 2793.2 //kJ/kg
h2= 1342.3 //kJ/kg
h1= 2993.5 //kJ/kg
m3= 2.5 //kg/s
b1= 1043.9 //kJ/kg
b2= 374.24 //kJ/kg
b3= 875.41 //kJ/kg
//CALCULATIONS
m1= m3*((h3-h2)/(h1-h2))
m2= m3*((h3-h1)/(h2-h1))
Bin= (m1*b1+m2*b2)
Bout= m3*b3
B= Bin-Bout
Wmax= B
I= B
//RESULTS
printf (' mass flow rate= %.3f kg/s',m1)
printf (' \n mass flow rate= %.3f kg/s',m2)
printf (' \n Wmax= %.3f kg/s',Wmax)
printf (' \n Irreversibility= %.1f kW',Wmax)
