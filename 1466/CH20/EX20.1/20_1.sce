

clc
//initialisation of variables
p=800//lb/in^2
d=6//ft
l=18//ft
//CALCULATIONS
loa=p*%pi*d*d/4
capacity=loa*l/(33000*60)
//RESULTS
printf ('\n capacity= %.3f hp-hours',capacity)
