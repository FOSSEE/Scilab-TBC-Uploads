clc
//initialisation of variables
r=48//in
A=450//gpd/acre
B=8000//gpd/mile
S=5280/350//manholes/mile
//CALCULATIONS
C=(B-S*100)/12//gpd/mile
//RESULTS
printf('the ground a quarter of it eventually =% f gpd/mile',C)
