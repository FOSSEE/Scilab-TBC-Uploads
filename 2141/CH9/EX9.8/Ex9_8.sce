
clc
//initialisation of variables
P3=14.7 //lbf/in^2
T3=500// R
T1=2000//R
R=53.34 //F
P2=128*P3//lbf/in^2
T2=4 //f
P1=1882*1.44 //lbf/in^2
Q=50 //Btu/lbm
P=128//lbf/in^2
P4=P1/P //lbf/in^2
g=144//ft
T=778//F
//CALCULATIONS
nth=1-(T3/T1)//F
Wnet=nth*Q //Btu/lbm
V3=(R*T3)/(P3*g)//ft^3/lbm
v1=(R*T1)/(P1*g)//ft^3/lbm
Mep=(Wnet*T)/(V3-v1)//lbf/ft^2
//RESULTS
printf('The cycle effieciency and the mean effective pressure=% f lbf/ft^2',Mep)
