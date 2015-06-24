// Example 2.17 page no-72
clear
clc
sigma=100     //Ohm-cm
e=1.6*10^-19 //c
mup=1800     //cm^2/V-sec
ni=2.5*10^13 // /cm^3
printf("\nIn p-type semiconductor, p>>n.")
pp=sigma/(e*mup)
n=ni^2/pp
printf("\nPp=%.2f*10^17 holes/cm^3\nn=%.1f*10^9 electrons/cm^3",pp/10^17,n/10^9)
