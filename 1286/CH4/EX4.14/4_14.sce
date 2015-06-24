clc
//initialisation
v2=1.677//m3
v1=0.001//m3
dp=0.76*13600*9.81
t=100//c
T=t+273//k
L=540000//cal//kg
//CALCULATIONS
dT=(dp*T*(v2-v1))/L
//results
printf(' increase in boiling point= % 1f C',dT)
