clc
//initialization of variables
V=1000 //mph
P=14.7 //lb/in^2
T=60 //F
g=1.4
//calculations
V1=V*(88/T)
Pratio=(1+ (g-1)*V1^2 /(2*g*32.2*53.3*(T+460)))^(g/(g-1))
eta=1-1/(Pratio)^0.286
//results
printf("Theoretical cycle efficiency = %.3f",eta)
