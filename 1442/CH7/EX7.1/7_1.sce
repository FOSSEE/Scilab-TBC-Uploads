clc
//initialisation of variables
m= 0.35 //kg
u2= 211.785 //kJ/kg
u1= 182.267 //kJ/kg
p2= 300 //kPa
v3= 0.085566 //kJ/kg
v2= 0.076218 //kJ/kg
h3= 260.391 //kJ/kg
h2= 234.650 //kJ/kg
u4= 199.460 //kJ/kg
u3= 234.721 //kJ/kg
p4= 250 //kPa
v1= 0.076218 //kJ/kg
v4= 0.085566 //kJ/kg
h1= 201.322 //kJ/kg
h4= 220.851 //kJ/kg
//CALCULATIONS
Q12= m*(u2-u1)
W23= m*p2*(v3-v2)
Q23= m*(h3-h2)
W34= 0
Q34= m*(u4-u3)
W41= m*p4*(v1-v4)
Q41= m*(h1-h4)
dW= W23+W41
dQ= Q12+Q23+Q34+Q41
Qh= Q12+Q23
n= dW*100/Qh
//RESULTS
printf (' heat = %.2f kj',Qh)
printf (' \n efficiency = %.2f percent',n)
