
clc
clear
//Input data
p1=5//Pressure in bar
T1=200+273//Temperature in K
p2=2//Pressure in bar
m=0.3//Mass flow rate in kg/s
n=1.3//Adiabatic index

//Calculations
vo=0.4249//Specific volume in m^3/kg
ho=2855.4//Enthalpy in kJ/kg
so=7.0592//Entropy in kJ/kg.K
x1=0.972//Dryness fraction 
h1=(504.7+x1*2201.9)//Enthalpy in kJ/kg
v1=x1*0.8857//Specific volume in m^3/kg
V1=44.72*sqrt(ho-h1)//Velocity in m/s
A1=((m*v1)/V1)*10^6//Area in mm^2
rp=(p1/p2)^(1/n)//Specific volume ratio
vR=(vo*rp)//Specific volume in m^3/kg
VR=sqrt(2*((n/(n-1))*(p1*vo-p2*vR)*10^5))//Velocity in m/s
AR=((m*vR)/VR)*10^6//Area in mm^2
TR=T1/(p1/p2)^((n-1)/n)//Temperature in K
tR=(TR-273)//Temperature in degree C
ts=120.23//Saturation temperature at pressure p1 in degree C
ds=ts-tR//Degree of subcooling in degree C
ps=1.4327//Saturation pressure at tR in bar
dsu=(p2/ps)//Degree of supersaturation

//Output
printf('(a) Exit area when the flow is in equilibrium throughout is %3.0f mm^2 \n (b) Exit area when the flow is supersaturated is %3.1f mm^2 \n (i) The degree of supercooling is %3.2f degree C \n (ii) The degree of supersaturation is %3.3f',A1,AR,ds,dsu)
