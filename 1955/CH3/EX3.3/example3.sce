clc
clear
//input data
m=14//The mass flow rate of air delivered to centrifugal compressor in kg/s
P01=1//The inlet stagnation pressure in bar
T01=288//The inlet stagnation temperature in K
P=4//The stagnation pressure ratio
N=200//The speed of centrifygal compressor in rps
ss=0.9//The slip factor
ps=1.04//The power input factor
ntt=0.8//The overall isentropic efficiency
r=1.4//The ratio of specific heats of air
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
pp=ss*ps*ntt//The pressure coefficient
U2=((Cp*T01*((P^((r-1)/r))-1))/pp)^(1/2)//Peripheral velocity of impeller top at outlet in m/s
D2=U2/(3.14*N)//The overall diameter of the impeller in m

//output
printf('The overall diameter of the impeller is %3.2f m',D2)
