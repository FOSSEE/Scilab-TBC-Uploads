clc
clear
//Input data
ma=6.11//Flow rate of air in kg/min
mf=0.408//Flow arte of petrol in kg/min
dp=768//Density of petrol in kg/m^3
Ta=15.5+273//Temperature of air in K
pa=1.027//Pressure of air in kg/cm^2
R=29.27//Characteristic gas constant in kg.m/kg.K 
va=97.5//Speed of air in m/sec
Cv=0.84//Velocity coefficient
g=1.4//Ratio of specific heats 
x=0.8//pressure at the venturi is 0.8 of the pressure drop at the choke
Cd=0.66//Coefficient of discharge

//Calculations
rp=(1-((va/Cv)^2/(((2*9.81*g)/(g-1))*R*Ta)))^(g/(g-1))//Pressure ratio
p2=(pa*rp)//Pressure in kg/cm^2
T2=(Ta*rp^((g-1)/g))//Temperature in K
da=(p2/(R*T2))*10^4//Density in kg/m^3
daa=sqrt((ma/(60*va*da))/(3.14/4))*1000//Throat diameter in mm
df=sqrt((mf/(60*Cd*sqrt(2*9.81*dp*x*(pa-p2)*10^4)))/(3.14/4))*1000//Orifice diameter in mm

//Output
printf('Throat diameter of the choke is %i mm \n The orifice diameter is %3.2f mm',daa,df)
