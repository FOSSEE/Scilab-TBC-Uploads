
clc
clear
//Input data
p1=5//Pressure in bar
T1=200//Temperature in degree C
p2=2//Pressure in bar
m=0.3//Mass flow rate in kg/s
n=1.3//Adiabatic index
nn=0.92//Nozzle efficiency
cp=1.925//mean specific heat in kJ/kg.K
x=[2.308,1943]//pv*10^3 = 2.308(h-1943)

//Calculations
vo=0.4249//Specific volume in m^3/kg
ho=2855.4//Enthalpy in kJ/kg
so=7.0592//Entropy in kJ/kg.K
x1=0.972//Dryness fraction 
h1=(504.7+x1*2201.9)//Enthalpy in kJ/kg
v1=x1*0.8857//Specific volume in m^3/kg
V1=44.72*sqrt(ho-h1)//Velocity in m/s
h=ho-h1//Change in enthalpy in kJ/kg
hoq=nn*h//Change in enthalpy in kJ/kg
VQ=44.72*sqrt(hoq)//Velocity in m/s
toq=(hoq/cp)//Temperature difference in degree C
tQ=(T1-toq)//Temperature in degree C
TQ=tQ+273//Temperature in K
vQ=((p1*100*vo)/(T1+273))*(TQ/T1)//Specific volume in m^3/kg
A1=((m*vQ)/VQ)*10^6//Area in mm^2
vQ=(x(1)*(ho-hoq-x(2)))/(10^3*p2)//Specific volume in m^3/kg
A11=((m*vQ)/VQ)*10^6//Area in mm^2

//Output
printf('Exit area is %3.1f mm^2 which upon checking is %3.0f mm^2',A1,A11)
