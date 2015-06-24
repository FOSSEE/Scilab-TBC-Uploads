clc
clear
//input data
D=0.6//Mean diameter of compressor in m
N=15000//Running speed of the compressor in rpm
dT=30//Actual overall temperature raise in K
PR=1.3//Pressure ratio of all stages
m=57//Mass flow rate of air in kg/s
nm=0.86//Mechanical efficiency
T1=308//Initial temperature in K
T2=328//Temperature at rotor exit in K
r=1.4//The ratio of specific heats of air
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K

//calculations
W=m*Cp*dT//Work done in kW
P=W/nm//Power required in kW
ns=((T1*((PR^((r-1)/r))-1))/(dT))//Stage efficiency
R=(T2-T1)/(dT)//Reaction ratio

//output
printf('(a)Power required to drive the compressor is %3.3f kW\n(b)The stage efficiency is %3.4f\n(c)The degree of reaction is %3.2f',P,ns,R)
