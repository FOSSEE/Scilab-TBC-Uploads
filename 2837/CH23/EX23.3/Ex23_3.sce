clc
clear
//Initalization of variables
pa=14.2
rel=0.9
sh=0.012 //lb/lb
//calculations
pv=(pa*sh)/(0.622-sh)
sat=pv/rel
tf=64.34 //F
//results
printf("From steam tables, by interpolation, Final temperature = %.2f F",tf)
