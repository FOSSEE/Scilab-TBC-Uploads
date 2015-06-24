
clc
//initialisation of variables
p1=100 //lbf/in^2
t=500//F
v=200 //ft/sec
p2=20 //lbf/in^2
v1=600//ft/sec
hi=1279.1 //Btu/lbm
si=1.7085 //Btu/lbm-R
Pe=20 //lbf/in^2
Se=1.7085 //Btu/lbm
x=0.01676 //Btu/lbm
hg=1156.3 //Btu/lbm
hf=960.1 //Btu/lbm
g=32.17//in^2/ft^3
T=778//F
//CALCULATIONS
he=hg-x*hf //Btu/lbm
W=hi-he+[(v^2)-(v1^2)]/(2*g*T)//Btu/lbm
//RESULTS
printf('The work per pound of steam for this isentropic process=% f Btu/lbm',W)
