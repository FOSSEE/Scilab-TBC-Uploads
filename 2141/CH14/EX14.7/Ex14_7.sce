
clc
//initialisation of variables
k=1.4
g=32.17 //lbm-ft/sec^2
R=53.34 //ft-lbf/lbm-R
Te=0.5089*(660)//R
P=100//lbf/in^2
Pe=0.0939*(P)//lbf/in^2
A=2.0//ft/lbm
Me=2.197 //ft/lbm
P0=0.0939 //lbf/in^2
T0=0.05089 //lbf/in^2
Pe1=0.9371//lbm/in^2
Me1=0.306 //lbm/in^2
Te1=0.9816 //lbf/in^2
PE=Pe1*P//lbf/in^2
TE=Te1*660 //R
//CALCULATIONS
Ce=sqrt(k*g*R*Te)//ft/sec
Ve=Me*Ce//ft/sec
CE=sqrt(k*g*R*TE)//ft/sec
VE=Me1*CE//ft/sec
//RESULTS
printf('the velocity at the throat=% f ft/sec',Ve)
printf('The sonic velocity of throat =% f ft/sec',VE)
