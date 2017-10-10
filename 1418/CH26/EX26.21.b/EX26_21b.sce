//EXAMPLE 26.21(b)
//4-POLE DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;.........................//Total number of poles
N=500;........................//Speed of the generator in rpm
E=250;.........................//Generated EMF in Volts
Z=1200;............................//Total number of conductors
E=250;.............................//Generated EMF in Volts
b=35;..............................//Bore of pole shoe in Centi Meters
r=0.7;............................//Ratio of pole arc to pole pitch
l=20;.............................//Length of pole shoe in Centi Meter
Al=P;.............................//Number of parallel paths in a lap wound generator

Pp=b*%pi/4;.......................//Pole pitch in Centi Meters
y=round(Pp*10)/10;...............//Rounding of decimal places
Pa=r*y;..........................//Pole arc in Centi Meters
Par=Pa*l;......................//Pole area in Centi Meter^2
Phi=(E*60*Al)/(P*N*Z);........//Flux per pole in Webers
Mfd=Phi/(Par*10^-4);.............//Mean flux density in the air gap Weber/Meter^2
y1=round(Mfd*100)/100;
disp(y1,"Mean flux density in the air gap in Weber/Meter^2:");
