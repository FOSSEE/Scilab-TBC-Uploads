//EXAMPLE 27.20
//DC SHUNT GENERATORS

clc;
funcprot(0);

//Variable Initialisation
Ra=0.1;.....//Armature resistance of each generator in Ohms
L=250;......//Total load of each generator in Kilo Watts
Vt=500;.....//Terminal voltage in Volts
fp=4;.......//Raise in field current in Amperes
Le=L/5;......//Load for each generator in Kilo Watts
Io=Le*1000/V;.......//Output current of each generator in Amperes
ad=Ra*Io;.....//Armature drop in Volts
emf=V+ad;........//Induced emf in Volts
iemf=emf+((fp/100)*emf);......//Increse in generated emf in Volts

//Solving for current output of both the generators in Amperes
A=[1,-1;1,4.1];
B=[204;510];
y=A\B;
disp(y(1),"Output current of first generator in Amperes:");
disp(y(2),"Output current of second generator in Amperes:");

Vbus=510-Ra*y(2);........//Bus voltage in Volts
disp(Vbus,"Bus voltage in Volts:");

Po1=Vbus*y(2)/1000;.......//Output of first machinein Kilo Watts
Po=Vbus*y(1)/1000;.........//Output of each of other four generators in Kilo Watts
r=round(Po);.......//Rounding of decimal places
disp(Po1,"Output of first machinein Kilo Watts:");
disp(r,"Output of each of other four generators in Kilo Watts:");
