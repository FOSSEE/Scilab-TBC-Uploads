clc
//initialisation
h=6.6*10^-34//j sec
r=5.86*10^28
m=9.1*10^-31//kg
gs=2
//CALCULATIONS
a=(h*h/(2*m))*((3*r/(4*3.14*gs))^(2/3))
//resullts
printf(' \n fermi energy= % 1e',a)
