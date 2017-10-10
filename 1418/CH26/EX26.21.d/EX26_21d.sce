//EXAMPLE 26.21(d)
//Short short DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=200;.................................//Load current in Amperes
V=100;.................................//Terminal voltage in Volts
Ra=0.04;.................................//Armature resisitance in Ohms
Rse=0.03;................................//Series field resistance in Ohms
Rsh=60;..................................//Shunt filed resistance in Ohms

//Short shunt connection
Va=V+(I*Rse);............................//Armature terminal voltage in Volts
Ish=Va/Rsh;..............................//Shunt field current in Amperes
y=round(Ish*1000)/1000;...................//Rounding of decimal places
Ia=I+y;................................//Armature current in Amperes
E=Va+(Ia*Ra);..........................//Armature induced EMF in Volts
y1=round(E*100)/100;
disp(y1,"Armature induced EMF in Volts in short shunt connection:");

//Long shunt connection
Ish1=V/Rsh;...........................//Shunt field current in Amperes
y2=round(Ish1*1000)/1000;.............//Rounding of decimal places
Ia=I+y;...............................//Armature current in Amperes
Vase=Ia*(Ra+Rse);.......................//Total voltage drop in armature and series field winnding in Volts
y3=round(Vase*100)/100;.................//Rounding of decimal places
E1=y3+V;.............................//Armature induced EMF in Volts
disp(E1,"Armature induced EMF in Volts in long shunt connection:");
