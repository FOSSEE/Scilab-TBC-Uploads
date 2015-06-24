clc
clear
//Input data
D=0.25;//Diameter of the cylinder of a single acting air compressor in m
L=0.4;//Length of the stroke in m
P1=1;//Initial Pressure of the compressor in bar
T1=303;//Initial temperature of the compressor in K
P2=6;//Pressure during running in bar
N=250;//Operating speed of the compressor in rpm
R=287;//Gas constant in J/kg K 

//Calculations
V1=(3.14*D^2*L)/4;//Volume of air before compression in m^3
m=(P1*10^5*V1)/(R*T1);//Mass of air delivered by the compressor per stroke in kg/stroke
Nw=N;//Since single acting cylinder number of working stroke is equal to Operating speed of the compressor in rpm
ma=m*Nw;//Mass of air delivered per minute in kg/min

//Output
printf('Mass of air delivered per minute is %3.2f kg/min',ma)
