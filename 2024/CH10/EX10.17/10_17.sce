clc
//Initialization of variables
t=90 //F
ts=67.2 //F
phi=0.3
per=0.8
//calculations
dep=t-ts
dt=dep*per
tf=t-dt
disp("from psychrometric charts,")
phi2=0.8
//results
printf("Dry bulb temperature = %.2f F",tf)
printf("\n percent humidity  = %.2f",phi2)
