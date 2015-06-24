clc
//initialisation
m=2*10^-3//kg
R=8.31//j/mol/k
p=2*10^5
v=8.2*10^-4
a=0.136//pa m^6
M=28*10^-3//kg/
//CALCULATIONS
t=(p*v*M)/(R*m)
T=(M/(m*R))*(p+(m*m*a/(M*M*v*v)))*(v-(m*b/M))
//results
printf(' \n temperature for a perfect gas= % 1f k',t)
printf(' \n temperature for vanderwaals gas= % 1f k',T)
