
clc
//initialisation of variables
H=4//ft
v=8.42*10^-6//ft-sec
g=32.2//ft/sec^2
p=5.04*10^-3//lb/ft
//CALCULATIONS
k1=v/((H^1.5)*(sqrt(g)))
k2=p/(H*H*62.4)
//RESULTS
printf (' non dimensional constant= %.2e',k1)
printf ('\n non dimensional constant= %.2e',k2)
