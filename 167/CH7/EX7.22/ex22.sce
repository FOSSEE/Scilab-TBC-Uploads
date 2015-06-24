//ques22
//Energy and Cost Savings by Fixing Air Leaks
clear
clc
//The work needed to compress a unit mass of air at 20°C from the atmospheric pressure of 101 kPa to 700+101=801 kPa is
R=0.287;//gas constant for water
P2=801;//final pressure in kPa
P1=101;//initial pressure in kPa
n=1.4;
nc=0.8;
T1=293;//initial temperature in K
w=n*R*T1/(nc*(n-1))*((P2/P1)^(1-1/n)-1);//work done in kJ/kg
D=3*10^-3;//diameter in metre
A=%pi*D^2/4;//area in m^2
//Line conditions are 297 K and 801 kPa, the mass flow rate of the air leaking through the hole is determined as
Cdis=0.65;
k=1.4;//k=n
R=0.287;//gas constant for water
Tline= 297;//temperature of line in K
Pline=801;//pressure of line=P2
ms=Cdis*(2/(k+1))^(1/(k-1))*Pline/(R*Tline)*A*sqrt(1000*k*R*Tline*2/(k+1));//mass flow in kg/s
pw=ms*w//power wasted in kW
Esaving=pw*4200/0.92//in kWh/yr Energy saving=Power saved*operating hr/efficiency of motor 
printf('Energy saving = %.0f kWh/yr \n',Esaving);
Csaving=Esaving *0.078;//Cost saving in $/yr = Energy saving * unit cost 
printf(' Cost saving = $ %.0f/yr \n',Csaving);
