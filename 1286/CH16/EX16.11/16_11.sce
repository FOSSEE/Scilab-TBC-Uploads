clc
//initialisation
n=6.06*10^26
p=2.7*10^3
h=6.6*10^-34
m=9.1*10^-31//kg
gs=2
ml=26.98*10^-3
//CALCULATIONS
a=(h*h/(2*m*100))*((3*3*n*p/(4*3.14*gs*ml))^(2/3))
r=a/(1.609*10^-19)
//results
printf(' \n fermi energy= % 1f ev',r)
