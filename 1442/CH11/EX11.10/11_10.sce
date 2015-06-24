clc
//initialisation of variables
h1= 238.431 //kJ/kg
h4a= 73.881 //kJ/kg
Qc= 6 //kW
h2a= 343.787 //kJ/kg
n= 0.88
Tin= 33 //C
Tout= 20 //C
cp= 4.186 //J/mol K
h1a= 274.327 //kJ/kg
h3= 109.777 //kJ/kg
//CALCULATIONS
qc= h1-h4a
m= Qc/qc
w= h2a-h1a
W= m*w/n
COP= Qc/W
qh= h2a-h3
mcw= m*qh/(cp*(Tin-Tout))
//RESULTS
printf (' compressor power= %.3f kW ',W)
printf (' \n COP= %.3f  ',COP)
printf (' \n cooling water flow= %.4f kg/s ',mcw)
