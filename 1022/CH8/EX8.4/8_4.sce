clc
//initialisation of variables
h= 26 //KW
T= 43 //C
To= 0 //C
//CALCULATIONS
COP= (T+273)/((T+273)-(To+273))
W= h/COP
Qh=h
//RESULTS
printf ('Minimum electrical  requirement = %.2f KW',W)
printf (' \n Elctrical requirement if an electrical heater used= %.f KW',Qh)
