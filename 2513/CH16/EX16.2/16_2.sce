clc
//initialisation of variables
p=500//ft
p1=6//in
t=500//cfm
p2=7//psig
P=p2+14.7//psia
T=520*(P/14.7)^0.283//F
f=0.048*p1^0.027/(t)^0.148//in
//CALCULATIONS
delP=20*10^-3*p*T*(t)^2/(38*10^3*P*p1^5)//psia
//RESULTS
printf('the pressure drop=% f psia',delP)
