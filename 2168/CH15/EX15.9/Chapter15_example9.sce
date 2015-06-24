clc
clear
//Input data
n=6//Number of cylinders
p=300//Horse power in H.P
N=1200//Speed in r.p.m
f=0.2//Fuel rate in kg per B.H.P hour
ip=200//Injection pressure in kg/cm^2
cp=40//Pressure in the combustion chamber in kg/cm^2
pic=33//Period of injection of the crank angle in degrees
g=0.83//Specific gravity of fuel. In textbook, it is given wrong as 0.89
Cd=0.9//Coefficient of discharge 

//Output
Fc=(p*f)//Fuel consumption per hour in kg/hr
Fcy=(Fc/n)//Fuel consumption per cylinder in kg/hr
Fcyc=(Fcy/(60*(N/2)))//Fuel consumption per cycle in kg
q=(Fcyc/(g*1000))*10^6//Quantity of fuel injected per cylinder per cycle in c.c
I=((pic/360)*(1/N)*60)//Injection period in sec
df=(g/1000)//Density of fuel in kg/m^3
v=sqrt(2*981*((ip-cp)/df))//Velocity of fuel through orifice in m/s
A=(q/(Cd*v*I))//Area of orifice in cm^2
d=sqrt(A/(3.14/4))*10//Diameter in mm

//Output
printf('The diameter of the single orifice injector is %3.2f mm',d)
