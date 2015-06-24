clc
//initialisation
E=40//w
r=0.00005//m
l=0.1//m
si=5.67*10^-8
T=2773//k
//CALCULATIONS
a=2*3.14*r*l
e=E/(a*si*(T^4))
//results
printf(' \n relative emittance= % 1f ',e)
