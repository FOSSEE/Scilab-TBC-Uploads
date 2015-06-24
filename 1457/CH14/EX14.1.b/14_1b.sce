clc
//Initialization of variables
D1=50
n1=1450
n2=1200
D2=80
Q1=3.2 //cfs
h1=25 //m
g=9.81 //kN/m^3
eta=0.82
//calculations
h2=h1*(D2/D1)^2 *(n2/n1)^2
Q2=Q1*(D2/D1)^3 *(n2/n1)
bp=g*Q2*h2/eta
h1=82 //ft
Q1=50700 //gpm
h2=143.8 //ft
Q2=171800 //gpm
Ns1=n1*sqrt(Q1) /h1^(3/4) 
Ns2=n2*sqrt(Q2) /h2^(3/4) 
//results
printf("Brake power = %d kW",bp)
printf("\n Pumps are homologous. We expect them to have same specific speed and their speeds are %.1f and %.1f",Ns1,Ns2)
disp("14.1c is included in this example itself")
