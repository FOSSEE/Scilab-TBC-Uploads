clc
//initialisation of variables
h1= 1404.6 //kJ/kg
h2s= 1748.9 //kJ/kg
ec= 0.8
h4= 322.9 //kJ/kg
h2= 1835 //kJ/kg
Q= 100 //kW
h21= 1649.2 //kJ/kg
h22= 1515 //kJ/kg
h23= 1678.8 //kJ/kg
//CALCULATIONS
h2= h1+((h2s-h1)/ec)
COP= (h1-h4)/(h2-h1)
W= Q/COP
COP1= (h1-h4)/(h21-h1+h23-h22)
W1= Q/COP1
//RESULTS
printf (' COP= %.3f ',COP)
printf (' \n COP= %.3f ',COP1)
printf (' \n W= %.1f kW',W)
printf (' \n W= %.1f kW',W1)
