clc
clear
//Input data
ma=5;//Mass flow rate of air per min for a simple jet carburettor in kg/min
mf=0.4;//Mass flow rate of fuel in kg/min
df=780;//Density of the fuel in kg/m^3
p1=1.013;//The initial pressure of air in bar
t1=27;//The initial temperature of air in degree centigrade
C2=90;//The air flow velocity in m/s
Cva=0.8;//The velocity coefficient for the venturi
Cdf=0.6;//The coefficient of discharge of the main fuel jet 
Cpd=0.75;//The pressure drop across the fuel metering oriface
Cp=1005;//The specific heat of gas in J/kgK
g=1.4;//Adiabatic index
R=287;//Real gas constant in J/kgK
pi=3.141;//The mathematical constant of pi

//Calculations
p2=p1*[1-(C2^2/(Cva^2*2*Cp*(t1+273)))]^(g/(g-1));//Throat pressure in bar
da1=((p1*10^5)/(R*(t1+273)));//The density of air at inlet in kg/m^3
da2=[(da1)*(p2/p1)^(1/g)];//The density of air at the throat in kg/m^3
A2=[(ma/60)/(da2*C2)]*10^4;//The throat area in cm^2
d2=(4*A2/pi)^(1/2);//The throat diameter of the choke in cm
pv=p1-p2;//Pressure drop at venturi in bar
pj=Cpd*pv;//Pressure drop at jet in bar
Aj=[(mf/60)/(Cdf*(2*df*pj*10^5)^(1/2))]*10^6;//The area of the jet in mm^2
dj=(4*Aj/pi)^(1/2);//The oriface diameter in mm

//Output
printf('The throat diameter of the choke = %3.2f cm \n The oriface diameter = %3.1f mm ',d2,dj)
