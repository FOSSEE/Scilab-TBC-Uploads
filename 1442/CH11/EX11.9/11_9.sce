clc
//initialisation of variables
h1= 183.12 //kJ/kg
h4= 75.588 //kJ/kg
h2= 218.697 //kJ/kg
nm=0.94
Qc= 6 //kW
h4a= 45.343 //kJ/kg
h2a= 257.283 //kJ/kg
h1a= 213.427 //kJ/kg 
//CALCULATIONS
COP= (h1-h4)*nm/(h2-h1)
W= Qc/COP
COP1= (h1-h4a)*nm/(h2a-h1a)
W1= Qc/COP1
//RESULTS
printf (' COP= %.3f  ',COP)
printf (' \n COP= %.3f  ',COP1)
printf (' \n Work= %.3f kW ',W)
printf (' \n Work= %.3f kW ',W1)
