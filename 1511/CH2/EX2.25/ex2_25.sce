// Example 2.25 page no-83
clear
clc

si=5*10^22 //atom/cm^3
d=2*10^8 
Nd=si/d
m=9.1*10^-31//kg
k=1.38*10^-23
h=6.626*10^-34
Nc=2*(2*%pi*m*k/h^2)^(3/2)
T=(Nd/Nc)^(2/3)
printf("T=%.2f°K",T*10^4)//Nd/10^14)
