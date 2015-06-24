clc
//Initialization of variables
ns=70 
z1=10 //ft
z2=5000 //ft
//calculations
P1=12.2*144/62.4
P2=0.26*144/62.4
sigmac=0.31
h=(P1-P2-z1)/sigmac
//results
printf("Max permissible head to assure against cavitation = %d ft",h)
