clc
clear
//Input data
d=25;//Diameter of the bore in cm
l=0.4;//Stroke length in m
N=300;//Operating speed of the engine in rpm
n=120;//Number of explosions per minute
pm=6.7;//Mean effective pressure in kgf/cm^2
Tnet=90;//Net brake load in kg
R=0.75;//Radius of brake drum in m
f=0.22;//Fuel supplied per minute in m^3
C=4500;//Calorific value of fuel in kcal/m^3

//Calculations
BHP=(2*3.14*R*N*Tnet)/4500;//Brake horse power in kW
A=(3.14*d^2)/4;//Area of the cylinder in cm^2
IHP=(pm*l*A*n)/4500;//Indicated horse power in kW
H=f*C;//Heat supplied by fuel per minute in kcal
nt1=((IHP*C)/(990*427))*100;//Thermal efficiency on IHP basis in percent
nt2=((BHP*C)/(990*427))*100;//Thermal efficiency on BHP basis in percent

//Output
printf('(a)The brake horse power is %3.2f kW\n (b)Indicated horse power is %3.3f kW\n (c)Thermal efficiency on IHP basis is %3.2f percent\n (d)Thermal efficiency on BHP basis is %3.2f percent',BHP,IHP,nt1,nt2)
