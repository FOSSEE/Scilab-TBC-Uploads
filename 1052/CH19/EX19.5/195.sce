clc;
//Example 19.5
//page no 254
printf("Example 19.5 page no 254\n\n");
//a venturi meter has gasoline flowing through it.
h=0.035//height of venturi meter
D1=0.06//upsteeam diameter,m
D2=0.02//throat diameter,m
rho_m=13600//density of mercury
rho=680//density of gasoline
g=9.807
v2=sqrt((2*g*h*(rho_m-rho)/rho)/1-D2^4/D1^4)//velocity of gasoline at the the throat
printf("\n velocity at throat v2=%f m/s",v2);
q=(%pi/4)*D2^2*v2//flow rate
printf("\n flow rate q =%f m^3/s",q);
P1=101325//upstream pressure,Pa
P2=P1-g*h*(rho_m-rho)//pressure at throat P2
printf("\n pressure P2=%f Pa",P2);
P_d=P1-P2//pressure difference
P_l=.1*P_d//pressure loss is 10 %
printf("\n pressure loss P_l=%f Pa",P_l);
W_l=q*P_l//power loss
printf("\n power loss W_l=%f W",W_l);
