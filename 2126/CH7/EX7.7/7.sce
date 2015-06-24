clc
clear

//input data
A1=18*10^-4 //throat area in m^2
P0=25*10^5 //combustion chamber pressure in Pa
Is=127.42 //specific impulse in sec
wp=44.145 //weight flow rate of propellent in N/s
g=9.81 //acceleration due to kravity in m/s^2

//calculation
F=Is*wp //thrust in N
mp=wp/g //propellant mass flow in kg/s
Cj=F/mp //average effective jet velocity in m/s
Cf=F/(P0*A1) //thrust coefficient
Cw=wp/(P0*A1)/10^-3 //propellent weight flow coefficent *10^-3
SPC=(wp/F)/10^-3 //specific propellent consumption in sec^-1 *10^-3
Cch1=Cj/Cf //characteristic velocity in m/s

//output
printf('(A)thrust coefficient is %3.2f \n (B)propellent weight flow coefficent is %3.2f*10^-3 \n (C)specific propellent consumption is %3.2f*10^-3 s^-1 \n (D)characteristic velocity is %3.0f m/s',Cf,Cw,SPC,Cch1)
