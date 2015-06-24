clc
clear
//Input data
n=6//Number of cylinders
d=11.5//Bore in cm
l=14//Stroke in cm
af=16//Air fuel ratio
pa=1.03//Pressure of air intake in kg/cm^2
Ta=24+273//Temperature of air intake in K
nv=76.5//Volumetric efficiency in percent
R=29.27//Characteristic gas constant in kg.m/kg.K
N=1500//Speed in r.p.m
ip=125//Injection pressure in kg/cm^2
cp=40//Compression pressure in kg/cm^2
q=18.5//Fuel injection occupies 18.5 degrees of crenk travel
fsw=760//Fuel specific weight in kg/m^2
dc=0.94//Orifice discharge coefficient

//Calculations
Vs=((3.14/4)*d^2*l)//Stroke volume in c.c
Va=(Vs*(nv/100))//Volume of air supplied in c.c
wa=((pa*10^4*Va*10^-6)/(R*Ta))//Weight of air supplied per cylinder per cycle in kg
wf=(wa/af)//Weight of fuel injected per cylinder per cycle in kg
I=((60*q)/(N*360))//Injection time per cycle in sec
F=(wf/I)//Fuel injected per cylinder per sec in kg/sec
Af=(F/(dc*sqrt(2*9.81*fsw*(ip-cp)*10^4)))//Area of orifice in sq.m
df=sqrt(Af/(3.14/4))*1000//Diameter of orifice in mm

//Output
printf('Maximum amount of fuel injected per cylinder per sec is %3.2f kg/sec \n Diameter of orifice is %3.3f mm',F,df)
