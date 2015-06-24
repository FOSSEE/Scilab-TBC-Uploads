clc
clear
//Input data
ma=6.8//Mass flow rate of air in kg/min
mf=0.45//Mass flow rate of petrol in kg/min
pa=1.033//Pressure of air in kg/cm^2
Ta=20+273//Temperature of air in K
va=97.5//Velocity of air in m/s
Cv=0.8//Velocity coefficient
g=1.4//Ratio of specific heats 
R=29.27//Characteristic gas constant in kg.m/kg.K 
x=0.75//pressure at the venturi is 0.8 of the pressure drop at the choke
Cd=0.65//Coefficient of discharge
pw=800//Weight of petrol in kg per cu.m

//Calculations
rp=(1-((va/Cv)^2/(((2*9.81*g)/(g-1))*R*Ta)))^(g/(g-1))//Pressure ratio
p2=(pa*rp)//Pressure in kg/cm^2
T2=(Ta*rp^((g-1)/g))//Temperature in K
da=(p2/(R*T2))*10^4//Density in kg/m^3
daa=sqrt((ma/(60*va*da))/(3.14/4))*100//Throat diameter in mm
df=sqrt((mf/(60*Cd*sqrt(2*9.81*pw*x*(pa-p2)*10^4)))/(3.14/4))//Orifice diameter in mm

//Output
printf('Throat diameter of the choke is %3.2f cm \n The orifice diameter is %3.5f m',daa,df)
