//Ex 5.5 page 186

clc;
clear;
close;

Vs=220;//V
Vo=660;// V
Toff=100;// micro s

//Vo=Vs/(1-alfa)
alfa=1-Vs/Vo;// duty cycle
//alfa=Ton/(Ton+Toff)
Ton=alfa*Toff/(1-alfa);// micro s
T=Ton+Toff;//micro s
printf('Pulse width of output voltage, Ton = %d micro s & T = %d micro s',Ton,T)
//(ii) reduce pulse width by 50%
Ton=Ton/2;// micro s
Toff=T-Ton;// micro s
alfa=Ton/(Ton+Toff);// duty cycle
Vo=Vs/(1-alfa);// V
printf('\n New output voltage = %d V',Vo)

