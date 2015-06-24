clc
clear
//Input data
P=20;//Power developed by a four stroke diesel engine per cylinder in kW
N=2000;//Operating speed of the diesel engine in rpm
s=0.25;//Specific fuel consumption in kh/kW
p1=180;//Pressure of fuel injected in bar
d=25;//Distance travelled by crank in degrees
p2=38;//Pressure in the combustion chamber in bar
Cd=0.85;//Coefficient of velocity
A=30;//API in degrees

//Calculations
T=d/(360*(N/60));//Duration of fuel injection in s
SG=(141.5/(131.5+A))*10^3;//Specific gravity of fuel
V=Cd*(2*(p1-p2)*10^5/SG)^(1/2);//Velocity of fuel injection in m/s
Vf=(s/60)*P/((N/2)*SG);//Volume of fuel injected per cycle in m^3/cycle
Na=Vf/(V*T);//Nozzle orifice area in m^2
d=(((4*Na)/3.14)^(1/2))*10^3;//Diameter of the orifice of the fuel injector in mm

//Output
printf('The diameter of the orifice is %3.4f mm',d)
