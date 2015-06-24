clc
clear
//Input data
D=0.6;//Brake wheel diameter of a constant speed compression ignition engine operating on four stroke cycle in m
t=0.01;//Thickness of brake band in m
N=500;//Operating speed of the engine in rpm
W=20;//Load on brake band in kgf
S=3;//Spring balance reading in kgf
l=6.25;//Length of indicator diagram in cm
A=4.35;//Area of indicator diagram in cm^2
Sn=11;//Spring number in kgf/cm^2/cm
d=10;//Diameter of the bore in cm
L=0.13;//Length of the stroke in m
F=0.23;//Specific fuel consumption in kg/BHP hr
CV=10000;//Heating value of fuel in kcal/kg

//Calculations
BHP=(3.14*(D+t)*N*(W-S))/4500;//Brake horse power in kW
MEP=(A*Sn)/l;//Mean effective pressure in kgf/cm^2
Ar=(3.14*d^2)/4;//Area of the cylinder in cm^2
np=N/2;//Number of explosions per minute
IHP=(MEP*L*Ar*np)/4500;//Indicated horse power in kW
nm=(BHP/IHP)*100;//Mechanical efficiency in percentage
Wf=F*BHP;//Fuel consumption per hr in kg/hr
nt=((IHP*4500*60)/(Wf*CV*427))*100;//Indicated thermal efficiency in percentage
nb=((BHP*4500*60)/(Wf*CV*427))*100;//Brake thermal efficiency in kW

//Output
printf('(a)The brake horse power is %3.2f kW\n (b)Indicated horse power is %3.3f kW\n (c)Mechanical efficiency is %3.1f percent\n (d)Indicated thermal efficiency is %3.0f percent\n (e)Brake thermal efficiency is %3.1f percent',BHP,IHP,nm,nt,nb)
