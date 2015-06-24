clc;funcprot(0);//EXAMPLE 20.25
// Initialisation of Variables
ps=1;........//Suction pressure in bar
pi=4.2;.....//Intermediate pressure in bar
pi1=4;.......//Pressure of air leaving the interooler in bar
pd=18;........//Delivery pressure in bar
t1=298;..........//Suction temperature in K
t5=t1;
dlp=0.4;........//Diameter of low pressure cylinder in m
llp=0.5;........//Stroke of low pressure cylinder in m
N=200;........//Compressor rpm
k=0.05;........//Clearance ratio
cp=1.004;.........//Specific heat at constant pressure in kJ/kgK
n=1.25;........//Compression index
R=0.287;........//Gas constant in kJ/kgK
//Calculations
Vslp=(%pi/4)*dlp*dlp*llp;..........//Swept volume of low pressure cylinder in m^3
etavlp=(1+k)-(k*((pi/ps)^(1/n)));.....//Volumetric efficiency
t2=round(t1*((pi/ps)^((n-1)/n)));
m=(ps*10^5*etavlp*Vslp)/(R*1000*t1);...//Mass of air in kg
wlp=((n)/(n-1))*R*1000*t1*m*(((pi/ps)^((n-1)/(n)))-1);..........//Work done per min in Nm in low pressure cylinder
whp=((n)/(n-1))*R*t5*m*1000*(((pd/pi1)^((n-1)/(n)))-1);..........//Work done per min in Nm in high pressure cylinder
W=wlp+whp;.........//Net work done in Nm
IP=(W*N)/(60*1000);............//Power required to run the compressor in kW
disp(IP,"Power required to run the compressor in kW:")
Qr=m*N*cp*(t2-t1);...........//Heat rejected in intercooler in kJ/min
disp(Qr,"Heat rejected in intercooler in kJ/min:")
