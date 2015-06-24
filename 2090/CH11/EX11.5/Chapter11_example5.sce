clc
clear
//Input data
d=8.25;//The diameter of the bore in cm
L=11.25;//The length of the stroke in cm
r=8;//The compression ratio 
N=2500;//The speed of the engine in rpm
ip=17;//Indicated power in kW
a=0.08;//Fuel air ratio 
T=345;//Inlet temperature mixture in K
p=1.02;//Exhaust pressure in bar
CV=44000;//The calorific value of the fuel in kJ/kg
nth=0.29;//Indicated thermal efficiency
M=114;//Molar mass of fuel 
pi=3.141;//Mathematical constant
R=8314;//Universal Gas constant in J/kgK

//Calculations
Vs=(pi*d^2*L)/4;//Displacement volume in cm^3
V=(r/(r-1))*Vs;//Total cylinder volume in m^3
ps=[(29*p*10^5)/(R*T)]*(1/(1+a*(29/M)));//The density of dry air in kg/m^3
nsc=[(ip*1000)/((N/60)*V*10^-6*ps*a*CV*1000*nth)]*100;//The scavenging efficiency in percent

//Output
printf('The scavenging efficiency = %3.1f percent',nsc)
