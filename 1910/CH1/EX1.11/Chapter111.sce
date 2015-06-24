// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 11")
//The horizontal steel pipe has outer diameter(D)=80 mm or.08 m
//The pipe is maintained at a temprature(T1)=60°C where the air and wall temprature(T2)=20 °C 
//The average free convective heat transfer coefficient(hbr)=6.5 W/(m^2/K) b/w the outer surface of the pipe and air
D=.08;
T1=60;
T2=20;
hbr=6.5;
//Length(L=1) since per unit length is considered
L=1;
//The surface area of pipe is given by A=(%pi*D*L)
A=(%pi*D*L);
//The surface emissivity(emi) of steel = 0.8
//The stefan -Boltzman constant(sigma)= 5.7*10^-8 W/(m^2*K^4)
sigma=5.67*10^-8;
emi=.8;
//The total heat loss by The pipe per unit length is given by Q/L=hbr*A*(T1-T2)+sigma*emi*A*(T1^4-T2^4)
disp("The total heat loss by The pipe per unit length is given by Q/L=hbr*A*(T1-T2)+sigma*emi*A*(T1^4-T2^4) in W/m")
//Let Q/L=F
F=hbr*A*((T1+273.15)-(T2+273.15))+sigma*emi*A*((T1+273.15)^4-(T2+273.15)^4)

