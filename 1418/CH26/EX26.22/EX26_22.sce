//EXAMPLE 26.22
//LONG SHUNT DYNAMO

clc;
funcprot(0);

//Variable Initialisation
N=1000;...........................//Speed of the dynamo in rpm
Po=20;.............................//Output power in Kilo Watts
V=220;..............................//Terminal voltage in Volts
Ra=0.04;...........................//Armature resistance in Ohms
Rsh=110;.............................//Shunt field resistance in Ohms
Rse=0.05;...........................//Series field resistance in Ohms
eff=85;..............................//Over all efficiency in Percentage

I=(Po*1000)/(V);......................//Load current in Amperes
y=round(I*100)/100;...................//Rounding of decimal places
Ish=V/Rsh;...........................//Shunt field current in Amperes
Ia=y+Ish;..........................//Armature current in Amperes
Pin=(Po*1000)/(eff/100);...........//Input power in Watts
y1=round(Pin);.....................//rounding of decimal places

l=y1-(Po*1000);.........................//Total losses in the machine in Watts

//Copper losses
lsea=((Ra+Rse)*Ia^2);....................//Losses in series field winding + armature winding in Watts
y2=round(lsea);..........................//Rounding of decimal places
lsh=(Rsh*Ish^2);........................//Losses in shunt field circuit in Watts
Lc=y2+lsh;..............................//Total copper losses in watts
disp(Lc,"(i).Total copper losses in watts:");

//Iron and friction losses
Lrf=l-Lc;..............................//Total iron and friction losses in Watts
disp(Lrf,"(ii).Total iron and friction losses in Watts:");

//Torque developed by the prime mover
w=(2*3.14*N)/60;...................................//Angular speed in rad/sec
y3=round(w*100)/100;..................................//Rounding of decimal places
T=y1/y3;.......................................//Torque developed by the prime mover in Nw-m
y4=round(T*10)/10;.............................//Rounding of decimal places
disp(y4,"(iii).Torque developed by the prime mover in Nw-m:");




