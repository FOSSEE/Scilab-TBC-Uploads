// Example 10.8, page no-272
clear
clc

T=300//K
rho=2.12//ohm-m
mue=0.36//m^2/V-s
muh=0.17
e=1.6*10^-19//C
m=9.1*10^-31//kg
h=6.626*10^-34
sig=1/rho
ni=sig/(e*(muh+mue))
printf("\nConductivity = %.6f per Ohm-m\nIntrinsic carrier concentration, ni=%.5f*10^18",sig,ni*10^-18)

k=1.38*10^-23
Nc=2*(2*%pi*k*T/h^(2))^(1.5)
Nc=Nc*(0.5*m)^(1.5)
Nv=2*(2*%pi*k*T/h^(2))^(1.5)
Nv=Nv*(0.37*m)^(1.5)
printf("\nNc=%.3f*10^24\nNv=%.3f*10^24",Nc*10^-24,Nv*10^-24)
eg=2*k*T*log(sqrt(Nc*Nv)/ni)
eg=eg/e
printf("\nThe band gap of Ge is %.3f eV",eg)
