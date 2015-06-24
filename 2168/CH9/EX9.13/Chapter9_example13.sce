clc
clear
//Input data
x=3//Petrol stands 3 mm below
Ta=15.5+273//Temperature of air in K
pa=1.027//Pressure of air in kg/cm^2
R=29.27//Characteristic gas constant in kg.m/kg.K 
sg=0.76//Specific gravity of fuel
fc=6.4//Consumption of fuel in kg/hour
jd=1.27//Jet diameter in mm
Cd=0.6//Nozzle discharge coefficienct
Ca=0.8//Discharge coefficient of air
af=0.066//Air fuel ratio

//Calculations
df=(sg*1000)//Density of fuel in kg/m^3
da=(pa*10^4)/(R*Ta)//Density of air in kg/m^3
va=Ca*sqrt((2*9.81*x*df)/(da*1000))//Critical velocity of air in m/s
dpa=(((fc/(60*60))/((3.14/4)*(jd/1000)^2*Cd))^2/(2*9.81*df))+((x/1000)*df)//Drop in pressure in kg/m^3
dpaw=(dpa/1000)*100//Drop in pressure in cm of water
dj=sqrt(((fc/(3600*af))/(Ca*sqrt(2*9.81*da*dpa)))/(3.14/4))*1000//Effective throat diameter in mm

//Output
printf('Critical air velocity is %3.2f m/sec \n Effective throat diameter of the venturi is %3.1f mm \n The drop in pressure in the venturi is %3.2f cm of water',va,dj,dpaw)
