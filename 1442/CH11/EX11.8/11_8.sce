clc
//initialisation of variables
h1= 238.431 //kJ/kg
h4= 109.777 //kJ/kg
Qc= 6 //kW
h2= 295.835 //kJ/kg
n= 0.88
Tin= 33 //C
Tout= 20 //C
cp= 4.186 //J/mol K
//CALCULATIONS
qc= h1-h4
m= Qc/qc
w= h2-h1
W= m*w/n
COP= Qc/W
qh= h2-h4
mcw= m*qh/(cp*(Tin-Tout))
//RESULTS
printf (' compressor power= %.2f kW ',W)
printf (' \n COP= %.3f  ',COP)
printf (' \n cooling water flow= %.4f kg/s ',mcw)
