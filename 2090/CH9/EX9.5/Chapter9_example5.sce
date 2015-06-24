clc
clear
//Input data
mf=(6/3600);//The mass flow rate of fuel in kg/s
df=750;//The density of fuel in kg/m^3
Z=0.003;//The level in the float chamber below the top of the jet in m
p=1.013;//The ambient pressure in bar
T=294;//The ambient temperature in K
dj=0.0012;//The jet diameter in m
Cdf=0.65;//The discharge coefficient of the jet 
Cda=0.8;//The discharge coefficient of air 
A=15.3;//The air fuel ratio 
pi=3.141;//The mathematical constant of pi
g=9.81;//The gravitational constant in m/s^2
R=287;//Real gas constant in J/kgK
dh=1000;//The density of water in kg/m^2

//Calculations
da=(p*10^5)/(R*T);//The density of air in kg/m^3
Ca2=Cda*((2*g*Z*df)/da)^(1/2);//The critical air velocity at the throat
Aj=(pi/4)*dj^2;//The area of the jet in m^2
P=[(mf^2/(Cdf^2*Aj^2*2*df))+(g*Z*df)]/10^5;//The dipression at the throat in bar
h=(P*10^5)/(dh*g);//In meter of water
h1=(P*10^5)/g;//In mm of water
ma=mf*A;//The mass flow rate of air in kg/s
A2=[ma/((Cda*(2*da*(P*10^5))^(1/2)))]*10^4;//The area of the throat in cm^2
d2=[(A2*4/pi)^(1/2)]*10;//The effective throat diameter in mm

//Output 
printf('The critical air velocity = %3.3f m/s \n The depression at the throat in mm of H2O = %3.2f mm of H2O \n The effective throat diameter  %3.2f mm ',Ca2,h1,d2)
