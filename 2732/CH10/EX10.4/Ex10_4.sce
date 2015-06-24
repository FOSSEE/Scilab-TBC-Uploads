clc
//initialization of variabes
clear
cA=10 //cm^2
wA=5 //cm^2
P=1 //tonne
E=2*10^6 //kg/cm^2
P=P*1000 //kg
// calculations
U_up=P^2*200/(2*E*cA)*1/sqrt(3)*(2+4+6+8+10+12)
U_do=P^2*200/(2*E*cA)*1/sqrt(3)*(1+3+5+7+9+11+13/2)
U_web=P^2*200/(2*E*wA)*1/sqrt(3)*(2*13)
U=U_up+U_do+U_web
delta=U*2/(P)
// results
printf('deflection = %.3f cm',delta)
