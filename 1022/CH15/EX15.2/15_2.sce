clc
//initialisation of variables
T= 10 //F
T1= 110 //F
Pr= 180 //lbm/hr
h1= 78.335 //Btu/lbm
h3= 33.531 //Btu/lbm
h2= 91 //Btu/lbm
L= 12000 //Btu/hr per ton
//CALCULATIONS
h4= h3
QL= h1-h4
W= h2-h1
COP= QL/W
C= QL*Pr/L
//RESULTS
printf ('Refrigerating effect = %.1f Btu/lbm ',QL)
printf (' \n Coffecient of performnance= %.1f ',COP)
printf (' \n Capacity of refrigeration in tons= %.2f ton',C)
