clc
clear
//Input data
d=0.3;//Diameter of the bore in m
L=0.45;//Stroke length in m
N=220;//Operating speed of the engine in rpm
T=3600;//Duration of trial in sec
F=7;//Fuel consumption in kg per minute
CV=45000;//Calorific value of fuel in kJ/kg
A=320;//Area of indicator diagram in mm^2
l=60;//Length of indicator diagram in mm
S=1.1;//Spring index in bar/mm
W=130;//Net load on brakes in kg
D=1.65;//Diameter of brake drum in m
W1=500;//Total weight of jacket cooling water in kg
t=40;//Temperature rise of jacket cooling water in degrees celsius
t1=300;//Temperature of exhaust gases in degrees celsius
ma=300;//Air consumption in kg
sg=1.004;//Specific heat of exhaust gas in kJ/kgK
sw=4.185;//Specific heat of water in kJ/kgK
t2=25;//Room temperature in degrees celsius
g=9.81;//gravity

//Calculations
P=(W*g*3.14*D*N)/(1000*60);//Power available at brakes in kW
pm=(A*S)/l;//Mean effective pressure in bar
I=(pm*10^5*L*((3.14*d^2)/4)*N)/(1000*2*60);//Indicated power developed in kW
nm=(P/I)*100;//Mechanical efficiency in percent
nt=(P/((F/T)*CV))*100;//Brake thermal efficiency in percent
ni=(I/((F/T)*CV))*100;//Indicated thermal efficiency in percent
Hs=F*CV;//Heat supplied on one hour basis
Hp=P*T;//Heat equivalent of brake power in kJ
Hf=I-P;//Heat lost in friction in kJ
Hc=W1*t*sw;//Heat carried away by cooling water in kJ
He=(ma+F)*(t1-t2)*sg;//Heat carried away by exhaust gas in kJ
Hu=Hs-(He+Hf+Hc+He);//Heat unaccounted in kJ
nb=(He/Hs)*100;//Heat equivalent of power at brakes in percent
nf=(Hf/Hs)*100;//Heat lost in friction in percent
nw=(Hc/Hs)*100;//Heat removed by jacket water in percent
ne=(He/Hs)*100;//Heat carried away by exhaust gases in percent
nu=(Hu/Hs)*100;//Heat unaccounted in percent

//Output
printf('(a)Power available at brakes is %3.2f kW\n (b)Indicated power developed is %3.2f kW\n (c)Mechanical efficiency is %3.2f percent\n (d)Brake Thermal efficiency is %3.2f percent\n (e)Indicated thermal efficiency is %3.2f percent',P,I,nm,nt,ni)
