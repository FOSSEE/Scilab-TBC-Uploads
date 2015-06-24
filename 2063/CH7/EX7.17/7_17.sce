clc
clear
//Input data
P=200;//Power developed by a six cylinder diesel engine in kW
N=2000;//Operating speed of the engine in rpm
bs=0.2;//The brake specific fuel consumption in kg/kWh
p1=35;//The pressure of air in the cylinder at the beginning of injection in bar
p2=55;//Maximum cylinder pressure in bar
p3=180;//Initial injection pressure in bar
p4=520;//Maximum pressure at the injector in bar
Cd=0.75;//Coefficient of discharge
S=850;//Specific gravity of fuel
p5=1;//Atmospheric pressure in bar
a=16;//The crank angle over which injection takes place in degrees

//Calculations
Po=P/6;//Power output per cylinder in kW
F=(Po*bs)/60;//Fuel consumed per cylinder in kg/min
Fi=F/(N/2);//Fuel injected per cycle in kg
T=a/(360*(N/60));//Duration of injection in s
deltaP1=p3-p1;//Pressure difference at the beginning of injection in bar
deltaP2=p4-p2;//Pressure difference at the end of injection in bar
avP=(deltaP1+deltaP2)/2;//Average pressure difference in bar
V=Cd*(2*(avP*10^5)/S)^(1/2);//Velocity of injection of fuel jet in m/s
Vo=Fi/S;//Volume of fuel injected per cycle in m^3/cycle
A=(Vo/(V*T))*10^6;//Area of fuel orifices in mm^2

//Output
printf('The total orifice area required per injector if the injection takes place over 16 degree crank angle is %3.4f mm^2',A)
