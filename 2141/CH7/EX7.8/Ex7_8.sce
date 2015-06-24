
clc
//initialisation of variables
T1=1060 //R
hi=255.96 //Btu/lbm
pr=15.203 //ft/sec
p1=20 //lbf/in^2
p2=50 //lbf/in^2
Te=822//R
he=197.18 //Btu/lbm
//CALCULATIONS
Pe=pr*(p1/p2)//Btu/lbm
W=hi-he //Btu/lbm
//RESULTS
printf('The work per pound of air flowing through the turbine=% f Btu/lbm',W)
