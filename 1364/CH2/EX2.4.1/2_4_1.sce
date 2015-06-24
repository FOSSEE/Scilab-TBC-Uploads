clc
//initialisation of variables
Va= 100 //ft^3
h= 10 //ft
V1= 60 //ft^3
Pabyv= 34 //ft
h1= 4 //ft
//CALCULATIONS
H= Pabyv*((Va/V1)-1)-(h-h1)
h2= H+h
Va1= (1+(h2/Pabyv))*Va
V= Va1-Va
//RESULTS
printf (' depth of the river= %.1f ft',h2)
printf (' \n volume to be pumped= %.f ft^3',V)
