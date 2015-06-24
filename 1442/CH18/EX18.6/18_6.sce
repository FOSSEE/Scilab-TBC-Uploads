clc
//initialisation of variables
v= 0.0011 //m^3
P1= 1200 //Mpa
P2= 140 //Mpa
h5= -103 //kJ/kg
x4= 0.860
x7= 0.253
x5= 0.337
h1= 1658.1 //kJ/kg
h7= 343.7 //kJ/kg
h6= -1008 //kJ/kg
h4= 639 //kJ/kg
h3= 40 //kJ/kg
Tc= -10 //C
Th= 125 //C
Ta= 25 //C
m1= 1 //kg/s
m7= 6.23 //kg/s
m6= 7.23 //kg/s
//CALCULATIONS
h6= h5+v*(P1-P2)
cr= (x4-x7)/(x5-x7)
Qhbym= h1+(m7/m1)*h7-(m6/m1)*h6
Qcbym= h4-h3
COP= Qcbym/Qhbym
COPcarnot= ((273.15+Tc)/(273.15+Th))*((Th-Ta)/(Ta-Tc))
//RESULTS
printf (' Enthalpy= %.1f kJ/kg',h6)
printf (' \n circulation ratio= %.3f ',cr)
printf (' \n COP= %.3f ',COP)
printf (' \n COP carnot= %.3f ',COPcarnot)
