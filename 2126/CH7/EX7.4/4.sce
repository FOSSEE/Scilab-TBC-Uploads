clc
clear

//input data
mp=5 //propellent flow rate in kg/s (missing data)
de=0.10 //nozzle exit diameter in m
Pe=1.02*10^5 //nozzle exit pressure in Pa
Pamb=1.013*10^5 //ambient pressure in Pa
P0=20 //thrust chamber pressure in Pa
F=7000 //thrust in N
u=1000 //rocket speed in m/s
g=9.81 //acceleration due to gravity in m/s^2

//calculation
Cj=F/mp //effective jet velocity in m/s
Ca=Cj-u //absolute jet velocity in m/s
wp=mp*g //weight flow rate of propellent in N/s
Is=F/(wp) //specific impulse in sec
SPC=1/Is //specific propellent consumption in sec^-1

//output
printf('(A)effective jet velocity is %3i m/s \n (B)specific impulse is %3.2f sec \n (C)specific propellent consumption is %3.3f s^-1 \n (D)absolute jet velocity is %3i m/s',Cj,Is,SPC,Ca)
