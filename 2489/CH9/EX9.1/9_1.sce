clc
//Intitalisation of variables
clear
p1= 17.535 //mm
p2= 17.226 //mm
M= 100 //gms
m1= 18.02 //gms
m2= 18.04 //gms
//CALCULATIONS
M= (-1+(p1/(p1-p2)))*m1*m2/M
//RESULTS
printf ('Molecular weight of mannitol = %.f gms',M)
printf ('\n Correct Molecular weight of mannitol = %.f gms',M+1)
