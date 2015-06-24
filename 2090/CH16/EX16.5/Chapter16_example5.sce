clc
clear
//Input data
d=0.15;//The diameter of the bore in m
L=0.16;//The length of the stroke in m
N=500;//The speed of the engine in rpm
mf=0.0475;//Fuel consumption in kg/min
CV=42000;//The calorific value in kJ/kg
w=400;//The tension on either side of the pulley in N
c=2.2;//Brake circumference in m
l=50;//Length of the indicator diagram in mm
ap=475;//Area of the positive loop of indicator diagram in mm^2
an=25;//Area of the negative loop of indicator diagram in mm^2
s=0.8333;//Spring constant in bar/mm
pi=3.141;//Mathematical constant of pi

//Calculations
r=c/(2*pi);//Arm length in m
T=w*r;//Torque in Nm
bp=(2*pi*N*T)/(60*1000);//Brake power in kW
M=(ap-an)/l;//Mean height of indicator diagram in mm
imep=M*s;//Indicated mean effective pressure in bar
ip=(imep*10^5*L*(pi/4)*d^2*(N/(2*60))*(1/1000));//Indicated power in kW
nm=(bp/ip)*100;//The mechanical efficiency in percent
nb=[(bp*60)/(mf*CV)]*100;//The brake thermal efficiency in percent
ni=[(nb/100)/(nm/100)]*100;//The indicated thermal efficiency in percent
bsfc=(mf*60)/bp;//Brake specific fuel consumption in kg/kWh

//Output
printf('(a) The brake power = %3.2f kW \n (b) The indicated power = %3.3f kW \n (c) The mechanical efficiency = %3.0f percent \n (d) The brake thermal efficiency = %3.2f percent \n (e) The indicated thermal efficiency = %3.1f percent \n (f) The brake specific fuel consumption = %3.3f kg/kWh ',bp,ip,nm,nb,ni,bsfc)
