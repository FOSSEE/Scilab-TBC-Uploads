// Chapter 12_The junction field effect transistor
//Caption_Cutoff frequency
//Ex_9//page 579
e=1.6*10^-19
mun=1000
L=5*10^-4
eps=8.85*10^-14*11.7
a=0.60*10^-4
Nd=10^16
fT=(e*mun*Nd*a^2)/(2*%pi*eps*L^2)*10^-9
printf('The cutoff frequency of silicon JFET with given parameters is %1.2f GHz',fT)
