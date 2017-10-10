//EXAMPLE 26.26
//LONG SHUNT DYNAMO

clc;
funcprot(0);

//Variable Initialisation
N=1000;.....................//Speed of the generator in rpm
Po=22;....................//Output power in Kilo Watts
V=220;....................//Terminal voltage in Volts
Ra=0.05;..................//Armature resisitance in Ohms
Rsh=110;...................//Shunt field resistance in Ohms
Rse=0.06;..................//Series field resisitance in Ohms
eff=88;....................//Overall efficiency in Percentage

Ish=V/Rsh;.....................//Shunt field current in Amperes
I=(Po*1000)/V;.................//Load current in Amperes
Ia=I+Ish;........................//Armature current in Amperes
Vse=Ia*Rse;.........................//Drop in series field windings in Volts
Ly=(Ia^2)*Ra;........................//(Ia^2)Ra losses in Watts
Lse=(Ia^2)*Rse;......................//Series field loss in Watts
y=round(Lse*10)/10;.................//Rounding of decimal places
Lsh=(Ish^2)*Rsh;....................//Shunt field loss in Watts
Lcu=Ly+y+Lsh;.....................//Total copper losses in Watts
disp(Lcu,"(a).Total copper losses in Watts:");
Pin=(Po*1000)/(eff/100);................//Input power in Watts
Lt=(Pin)-(Po*1000);................//Total lossees in Watts
Lif=Lt-Lcu;.......................//Iron and friction losses in Watts
T=(Pin*60)/(N*2*3.142);..............//Torque exerted by the prime mover in N-m
y1=round(T*10)/10;.................//Rounding of decimal places
disp(y1,"(b).Torque exerted by the prime mover in N-m:");

