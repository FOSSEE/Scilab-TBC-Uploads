clc
//initialization of variables
P=14.7 //lb/in^2
T=80+460 //R
//calculations
disp("From steam tables,")
Ps=0.5069  //lb/in^2
v=633.1 //ft^3/lbm
Pair=P-Ps
vair=53.3*T/(144*Pair)
wair=1/(1+vair/v)
wwater=vair/v/(1+vair/v)
//results
printf("Partial pressure of air = %.1f ft^3/lbm",Pair)
printf("\n Partial pressure of water vapor = %.4f ft^3/lbm",Ps)
printf("\n Gravimetric analysis of air = %.4f",wair)
printf("\n Gravimetric analysis of water = %.4f",wwater)
