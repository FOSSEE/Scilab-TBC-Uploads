clc
//to calculate value of Temperature
Bc=105*10^3 //magnetic field in amp/m
Bo=150*10^3 //critical field of the metal in amp/m 
Tc=9.2 //critical temperature of the metal in K
T=Tc*sqrt(1-(Bc/Bo))
disp("value of temperature is T="+string(T)+"K")

