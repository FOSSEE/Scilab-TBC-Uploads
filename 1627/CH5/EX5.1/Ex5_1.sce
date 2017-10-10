clc
//initialisation of variables
h=50//m
l=250//m^3
F=9802//N/m^3
t=1//s
h1=50*3.2808//ft/m
l1=250*35.31//ft/m
q=62.4//lb/ft^3
h1=746
//CALCULATIONS
P=(F*l*h)/t//MW
P1=q*l1*h1/t//ft-lb/sec
HP=P/h1//kHP
//RESULTS
printf('The horsepower potential is=% f kHP',HP)
