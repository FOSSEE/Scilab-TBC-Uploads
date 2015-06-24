clc
//initialisation
p=0.76*9.81*13600
dv=10^-5//m3
k=1.38*10^-23
t=300//k
//CALCULATIONS
r=(p*dv)/(k*t)
//results
printf(' \n factor by which number of accessible states increases is exp(r) ')
printf(' \n r= % 1e ',r)
