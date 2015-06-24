clc
clear
//Input data
n=6//Number of cylinders
d=9//Bore in cm
l=10//Stroke in cm
N=2500//Speed in r.p.m
Ta=25+273//Temperature of air entering the compressor in K
q=16800//Heat rate in kcal/hour
T=60+273//Temperature of air leaving the cooler in K
p=1.6//Pressure of air leaving the cooler in kg/cm^2
t=14.5//Engine torque in kg.m
nv=75//Volumetric efficiency in percent
nm=74//Mechanical efficiency in percent
R=29.27//Characteristic gas constant in kg.m/kg.K
Cp=0.24//Specific heat at constant pressure n kcal/kg.K

//Calculations
BHP=(2*3.14*N*t)/4500//Brake horse power in B.H.P
IHP=(BHP/(nm/100))//Indicated horse power in I.H.P
pm=((IHP*4500)/((l/100)*(3.14/4)*d^2*(N/2)*n))//Mean effective pressure in kg/cm^2
Vs=(n*(3.14/4)*(d/100)^2*(l/100)*(N/2))//Swept volume in m^3/min
Va=(Vs*(nv/100))//Aspirated Volume of air into engine in m^3/min
ma=(p*10^4*Va)/(R*T)//Aspirated mass flow into the engine in kg/min
mcdT=((BHP*4500/427)/Cp)//Product of mass flow rate and change in temperature
msdT=((q/60)/Cp)//Product of mass flow rate and change in temperature
x=(mcdT/msdT)//Ratio
T2=((Ta-(x*T)))/(1-x)//Temperature in K
mc=(msdT/(T2-T))//Air flow in kg/min

//Output
printf('(a) the mean effective pressure is %3.2f kg/cm^2 \n (b) the air consumption is %3.3f kg/min \n (c) the air flow into the compressor is %3.2f kg/min',pm,ma,mc)
