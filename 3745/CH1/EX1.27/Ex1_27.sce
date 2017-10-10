// Ex 27 Page 369

clc;clear;close;
// Given
Vcc=50;//V
Vmin=10;//V
Pd=40;//W


Vo=Vcc-Vmin;//V
K=Vo/Vcc;//constant
Rdash=2*Vcc**2/%pi/Pd*(K-%pi*K**2/4);//ohm
Po=K**2*Vcc**2/2/Rdash;//W
eta=%pi*K/4*100;//%

printf("load presented by transformer = %.1f ohm",Rdash)
printf("\n load power output = %.1f W",Po)
printf("\n conversion efficiency = %.1f percent",eta)
