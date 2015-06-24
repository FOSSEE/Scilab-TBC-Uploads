
clc
//initialisation of variables
k=1.4
g=32.17 //lbm-ft/sec^2
R=53.34 //ft-lbf/lbm-R
T=550 //R
T1=0.833 //F
Me=0.573 //lnm
Pe=80 //lbf/in^2
A=1/t //ft^2
Te=0.938*(660) //R
P=(52.8*t)/(R*T)//lbm/ft^3
t=144//ft
//CALCULATIONS
V=sqrt(k*g*R*T)//ft/sec
m=P*A*V //lbm/sec
Ce=sqrt(k*g*R*Te)//ft/sec
Ve=Me*Ce//ft/sec
Rho=(Pe*t)/(R*Te)//lbm/ft^3
M=Rho*A*Ve//lbm/sec
//RESULTS
printf('The mass rate of flow =% f lbm/sec',M)
