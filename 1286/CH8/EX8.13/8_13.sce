clc
//initialisation of variables
dp=1//atm
L=80000//cal
T=273//k
r=11/10
//CALCULATIONS
dv=(1-r)/1000
dt=T*dv*(13600*9.81*0.76)/(L*4.2)
//results
printf(' \n depression in melting point of ice= % 1f c',-dt)
