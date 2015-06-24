clc
clear
//Input data
d=0.1;//The diameter of the bore in m
L=0.12;//The length of the stroke in m
N=3000;//The engine rpm
d2=0.035;//The throat diameter of carburettor venturi in m
nv=80;//The volumetric efficiency of the engine in percent
Cda=0.82;//The coefficient of discharge of air flow 
p=1.013;//The ambient pressure in bar
T=298;//The ambient temperature in K
ar=15;//The air fuel ratio 
Z=0.005;//The top of the jet above the petrol level in the float chamber in m
Cdf=0.7;//The coefficient of discharge for fuel flow 
df=750;//The specific gravity of the fuel in kg/m^3
R=287;//Real gas constant in J/kgK
pi=3.141;//The mathematical constant of pi
g=9.81;//The gravitational constant in m/s^2
n=4;//Number of cylinders 

//Calculations
V=(pi/4)*d^2*L*(nv/100)*(N/(2*60))*n;//Volume of air inducted per second in m^3/s
da=(p*10^5)/(R*T);//The density of air in kg/m^3
ma=V*da;//The mass flow rate of air in kg/s
A2=(pi/4)*d2^2;//The area of the throat in m^2
P=[ma^2/(Cda^2*A2^2*2*da)]/10^5;//The change in pressure in bar
mf=ma/ar;//The mass flow rate of fuel in kg/s
Aj=[mf/(Cdf*(2*df*((P*10^5)-(g*Z*df)))^(1/2))]*10^6;//The area of the fuel jet in mm^2
dj=(Aj*4/pi)^(1/2);//The diameter of the fuel jet of a simple carburator in mm

//Output 
printf('The depression of the throat = %3.5f bar \n The diameter of the fuel jet of a simple carburettor = %3.2f mm ',P,dj)
