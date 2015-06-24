clc
clear
//Input data
mf=6.5;//Mass flow rate of fuel in kg/h
N=3000;//The speed of the engine in rpm
a=15;//The air fuel ratio
CV=44000;//The calorific value of the fuel in kJ/kg
pm=9;//The mean piston speed in m/s
pmi=4.8;//The mean pressure in bar
nsc=85;//The scavenging efficiency in percent
nm=80;//The mechanical efficiency in percent
R=290;//Real gas constant in J/kgK
p=1.03;//The pressure of the mixture in bar
T=288;//The temperature of the mixture in K
pi=3.141;//Mathematical constant

//Calculations
ma=a*mf;//Mass flow rate of air in kg/h
L=[(pm*60)/(2*N)]*100;//The length of the stroke in cm
mac=mf+ma;//Actual mass flow rate in kg/h
mi=(mac)/(nsc/100);//Ideal mass flow rate in kg/h
da=(p*10^5)/(R*T);//The density of the mixture in kg/m^3
d=[[(mi/da)*(4/pi)*(1/(L/100))*(1/(60*N))]^(1/2)]*100;//The diameter of the bore in cm
ip=(pmi*10^5*(L/100)*((pi/4)*(d/100)^2)*N)/(60*1000);//Power obtained in kW
bp=ip*(nm/100);//Brake power in kW
nth=(bp/((mf/3600)*CV))*100;//Thermal efficiency of the engine in percent

//Output
printf(' The diameter of the bore = %3.2f cm \n The length of the stroke = %3.0f cm \n The brake power = %3.2f kW \n The brake thermal efficiency = %3.1f percent ',d,L,bp,nth)
