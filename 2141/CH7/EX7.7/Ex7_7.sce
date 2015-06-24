
clc
//initialisation of variables
Fhy1=0.6008 //Btu/lbm-R
Fhy2=0.7963 //Btu/lbm-R
P1=50 //lbf/in^2
P2=40 //lbf/in^2
T=778//R
g=53.34//Btu/lbm-R
//CALCULATIONS
S=Fhy2-Fhy1-(g/T)*log(P2/P1)//Btu/lbm-R
//RESULTS
printf('The change in entropy per pound as air is heated =% f Btu/lbm-R',S)
