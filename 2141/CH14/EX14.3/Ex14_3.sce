
clc
//initialisation of variables
Ai=1.8 //ft^2
Ae=1.0//ft^2
Ve=1300//ft/sec
Pi=14.0//lbf/in^2
Vi=300//ft/sec
P0=14.7 //lbf/in^2
mi=30 //lbm/sec
me=30.6 //lbf/sec
Pe=18.0//lbf/in^2
t=144//lbf/in^3
g=32.17//lbm-ft/lbf-sec^2
//CALCULATIONS
R=[(Pi-P0)*t*Ai]-[(Pe-P0)*t*Ae]//lbm ft/sec^2
Rx=(me*Ve-mi*Vi)/(g)//lbm ft/sec^2
RX=-(R-Rx)//lbf
//RESULTS
printf('The thrust on the engine=% f lbf',RX)
