
clc
//initialisation of variables
m=10 //lbm
w=100 //lbm
z=77.8 //ft
Btu=1 //ft-lbf
g=32.17//ft/sec^2
gc=32.17//lbm-ft/lbf-sec^2
//CALCULATIONS
KE=(m*g/gc)*(-z)//ft-lbf
//RESULTS
printf('The stone then falls into the water=% f ft-lbf',KE)
