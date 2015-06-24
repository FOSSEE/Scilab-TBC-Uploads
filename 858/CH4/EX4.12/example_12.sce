clc
clear 
printf("example 4.12 page number 143\n\n")

//to find the power requirements

Q=3800/(24*3600)    //in m3/s
d=0.202    //in m

u=Q/((3.14/4)*d^2);    //in m/s
delta_P=5.3*10^6    //in Pa
density=897    //in kg/m3
F=delta_P/density;    //in J/kg
ws=9.8*30+F;
mass_flow_rate= Q*density;
power=(ws*mass_flow_rate)/0.6;

printf("power required = %f kW",power/1000)

