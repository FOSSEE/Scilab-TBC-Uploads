
clc
clear
//Input data
P=100//Power in MW
T=550//temperature in degree C
p=0.1//Pressure in bar
m=500000//Mass flow rate in kg/h at rated load
mo=25000//Mass flow rate in kg/h at zero load
x=[1/4,1/2,3/4,1]//Fraction of load

//Calculations
b=(m-mo)/(P*10^3)//Steam rate in kg/kWh
y1=(x(1)*(P*10^3))//For one-fourth load
s1=(mo/y1)+b//Steam rate in kg/kWh
y2=(x(2)*(P*10^3))//For one-fourth load
s2=(mo/y2)+b//Steam rate in kg/kWh
y3=(x(3)*(P*10^3))//For one-fourth load
s3=(mo/y3)+b//Steam rate in kg/kWh
y4=(x(4)*(P*10^3))//For one-fourth load
s4=(mo/y4)+b//Steam rate in kg/kWh
h1=3511//Enthalpy in kJ/kg
xs1=6.8142//Entropy in kJ/kg.K
xs2=xs1//Entropy in kJ/kg.K
x2s=(xs2-0.6493)/7.5009//Dryness fraction
h2s=191.83+x2s*2392.8//Enthalpy in kJ/kg
nR=((h1-h2s)/(h1-191.83))*100//Rankine efficiency in percent
nac=((P*10^3*3600)/(m*(h1-191.83)))*100//Actual efficiency in percent
nTG=((P*10^3*3600)/(m*(h1-h2s)))*100//Turbogenerator efficiency in percent

//Output
printf('(a) Steam rate at: \n One-fourth load is %3.2f kg/kWh \n Half load is %3.2f kg/kWh \n Three-fourth load is %3.2f kg/kWh \n Full load is %3.1f kg/kWh \n\n (b) Rankine cycle efficiency is %3.1f percent \n (c) Actual efficiency at full load is %3.1f percent \n (d) The turbogenerator efficiency at full load is %3.1f percent',s1,s2,s3,s4,nR,nac,nTG)
