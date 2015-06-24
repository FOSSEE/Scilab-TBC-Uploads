clc
//initialisation of variables
r=12.5//rario
p=0.39*10^6//ft.lb
p1=14//lb/in^2
t=373//Degree C
g=18//ft^3
t1=100//Degree C
V=g/r//ft^3
I=0.2*10^6//ft lb/lb
T=0.59*10^6//ft.lb/lb
D=0.221*10^6//ft.lb/lb
A=0.095*10^6//ft.lb/lb
E=0.264*10^6//ft.lb/lb
E1=0.390*10^6//ft.lb/lb
//CALCULATIONS
W=(E/E1)*100//percent
M=(E)/(144*(g-V))//lb.in^2
//RESULTS
printf('the efficiency of the engine and the m e p on the assumption that the specific heats=% f lb in^2',M)
