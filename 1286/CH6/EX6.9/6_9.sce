clc
//initialisation
r=8.32//j/mol/k
N=6.06*10^23
t=723
T=t+273
//calculations
ke=(3*r*T)/(2*N)
ke1=ke*N
//results
printf(' mean translational kinetic energy= % 1f J',ke1)
