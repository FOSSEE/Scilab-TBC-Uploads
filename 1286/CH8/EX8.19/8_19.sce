clc
//initialisation of variables
c1=1000
T=373//k
L=539300//cal
r=604// cal/kg/deg
//CALCULATIONS
c2=c1-(r)-(L/T)
//results
printf(' \n specific heat of saturated steam= % 1f cal/kg',c2)
