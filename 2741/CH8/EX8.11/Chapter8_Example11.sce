clc
clear
//Input data 
A=5*10^-5;//The surface area of the filament in m^2 
e=0.85;//The relative emittance of the filament 
s=5.672*10^-8;//Stefans constant in M.K.S units 
t=60;//The time in seconds 
T=2000;//The temperature of the filament of an incandescent lamp in K 

//Calculations 
E=A*e*s*t*(T^4);//The energy radiated from the filament in joules 

//Output 
printf('The energy radiated from the filament is E = %3.0f joules ',E)
