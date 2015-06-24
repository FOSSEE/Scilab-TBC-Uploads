clc
//initialisation of variables
h3= 3247.4 //kJ/kg
h4= 2439.1 //kJ/kg
h1= 251.4 //kJ/kg
h2= 253.9 //kJ/kg
P= 100000 //kW
//CALCULATIONS
wnet= h3-h4+h1-h2
qh= h3-h2
qc= h1-h4
n= wnet/qh
m= P/wnet
//RESULTS
printf (' work= %.f kJ/kg',wnet)
printf (' \n heat= %.1f kJ/kg',qh)
printf (' \n heat= %.1f kJ/kg',qc)
printf (' \n efficiency= %.4f ',n)
printf (' \n steam mass flow rate= %.2f kg/s',m)
