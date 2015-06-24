clc;
//Example 15.8
//page no 174
printf("Example no page no 174\n\n");
//air flowing through a steel pipe 
P_1=2.7//pressure,atm
T=288//temperature,k
v=30//velocity at the entrance of the pipe ,m/s
Mw=29//mol. weight of air
V=22.4//standard volume
T_s=273//st. temp
P_s=1//st. pressure
rho=(Mw*P_1*T_s)/(V*T*P_s)//density 
printf("\ density rho =%f kg/m^3",rho);
G=v*rho//mass veocity flux
printf("\n G mass velocity flux =%f kg/m^2.s",G);
f=0.004//friction factor
D=0.085//diameter ,m
L=65//length of pipe,m
//gravitational constant
P_2=P_1-2*f*L*G^2/(rho*D*101325)//pressure drop across the line
//factor 101325 for atm
printf("\n pressure drop P__2=%f atm",P_2);
P_drop=P_1-P_2//pressure drop
printf("\n P_drop pressure=%f atm",P_drop);

