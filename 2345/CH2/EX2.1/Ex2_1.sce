//Finding resistance
//Example 2.1(pg. 21)
clc
clear
l=300//in meters
a=25*(10^-6)//in meter square
d15=2.7//density at 15 degree C in ohm-meter
R15=d15*(l/a)
printf('The value of Resistance at 15 degree C is %3.2f.ohms \n',R15)
k0=0.004//temp coefficient in ohm/degree C at 0 degree C
t=15,T=50//in degree C
k15=k0/(1+(k0*t))
R50=R15*(1+k15*(T-t))
printf('The value of Resistance at 50 degree C is %3.2f.ohms',R50)

