clc
clear
//Input data
d=25;//The bore diameter of a single cylinder 4 stroke engine in cm
l=0.38;//Stroke length in m
t=3600;//Duration of test in sec
r=19710;//Total number of revolutions
F=6.25;//Fuel oil used in kg
A=5.7;//Area of indicator diagram in cm^2
L=7.6;//Length of indicator diagram in cm
S=8.35;//Spring number in kgf/cm^3
P=63.5;//Net load on brake drum in kg
R=1.2;//Radius of brake drum in m
Ww=5.7;//Rate of coolant flow in kg/min
deltaT=44;//Temperature rise of coolant in degrees celsius
T1=15.5;//Atmospheric temperature in degrees celsius
As=30;//Air supplied per kg of fuel
CV=10600;//Calorific value of fuel in kcal/kg
Te=390;//Exhaust gas temperature in degrees celsius
sm=0.25;//Mean specific heat of exhaust gas

//Calculations
Hs=(F*CV)/60;//Heat supplied by fuel per minute in kcal
pm=(A*S)/L;//Mean effective pressure in kgf/cm^2
I=(pm*l*(3.14*d^2)*r)/(4*60*2*4500);//Indicated horse power in kW
B=(P*R*2*3.14*r)/(4500*60);//Brake horse power in kW
Hei=(I*4500)/427;//Heat equivalent of IHP/min in kcal
Heb=(B*4500)/427;//Heat equivalent of BHP/min in kcal
Hf=Hei-Heb;//Heat in friction per minute in kcal
Hc=Ww*deltaT;//Heat carried away by coolant in kcal
We=(F+(As*F))/60;//Weight of exhaust gases per minute
He=We*(Te-T1)*sm;//Heat carried away by exhaust gases in kcal

//Output
printf('(a)Indicated horse power is %3.2f kcal\n (b)Brake horse power developed is %3.2f kcal\n (c)Heat equivalent of friction is %3.1f kcal',I,B,Hf)
