// Example 3.10 page no-170
clear
clc

Vdc=(100/(2*%pi))*(-cos(5*%pi/6)+cos(%pi/6))
printf("\nVdc=%.1f V",Vdc)
Vrms=sqrt(3.1)*Vdc
printf("\nVrms=%.1fV",Vrms)
