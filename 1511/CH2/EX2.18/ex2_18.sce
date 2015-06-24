// Example 2.18 page no-72
clear
clc

//(a)
sigma=100     //Ohm-cm
e=1.6*10^-19 //c
mup=1800     //cm^2/V-sec
ni=2.5*10^13 // /cm^3
printf("\n(a)\nAs it is p-type semiconductor, p>>n.")
pp=sigma/(e*mup)
n=ni^2/pp
printf("\nPp=%.2f*10^17 holes/cm^3\nn=%.1f*10^9 electrons/cm^3",pp/10^17,n/10^9)

//(b)
mun=1300
sig=0.1
n1=1.5*10^10
n2=sig/(mun*e)
p1=(n1^2)/n2
printf("\n\n(b)\nn=%.2f*10^14 elecrons/cm^3\np=%.2f*10^5 holes/cm^3",n2/10^14,p1/10^5)
