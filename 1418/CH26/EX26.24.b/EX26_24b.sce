//EXAMPLE 26.24(b)
//DC SHUNT MOTOR

clc;
funcprot(0);

//Variable Initialisation
V=500;..............................//Terminal voltage in Volts
Il=5;..............................//Line current in Amperes
Ra=0.15;...........................//Armature resistance in Ohms
Rf=200;.............................//Field resistance in Ohms
I=40;...............................//Load current in Amperes

Ia=Il/2;..........................//Armature current in Amperes
Lame=V*Ia;........................//Armature core loss and no load mechanical loss at rated speed in Watts
Ita=I+Ia;.............................//Total current for armature in Amperes
Lt=((Lame*2)+(Ra*Ita^2));................//Total losses in Watts
Po=V*I*10^-3;................................//Output power in Kilo Watts
y=round(Lt)/1000;...................................//Rounding of decimal places to Kilo Watts
eff=Po*100/(Po+y);....................................//Efficiency in percentage
y1=round(eff*100)/100;
disp(y1,"Efficiency in percentage:");
