clc
clear
//Initialization of variables
bore=3 //in
str=4 //in
rpm=3000 //rpm
air=110 //cu ft per min
//calculations
pdv=bore*bore*%pi*str*2*bore/4
pde=pdv*rpm /2
req=air*1728
eff=req/pde *100
//results
printf("Volumetric efficiency = %.1f percent",eff)
