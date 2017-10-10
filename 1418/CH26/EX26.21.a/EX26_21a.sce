//EXAMPLE 26.21(a)
//6-POLE DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=6;.........................//Total number of poles
N=1200;........................//Speed of the generator in rpm
E=250;.........................//Generated EMF in Volts
Da=350;........................//Armature diameter in Mili Meter
ag=3;...........................//Radial air gap between the field poles and the armature in Mili Meter
La=260;...........................//Axial length of field poles in Mili Meter
C=96;.............................//Total number of coils
T=3;............................//Total number of turns per coil
D=2;...............................//Duplex lap wound
Fc=80;..........................//Field pole effective coverage including fringing in Percentage

Z=C*T*2;......................//Total number of conductors
A=P*D;......................//Number of parallel paths in a duplex lap wound generator
Phi=(E*60*A)/(P*N*Z);................//Flux per pole in Webers
y=round(Phi*10000)/10000;............//Rounding of decimal places
disp(y,"(a).Flux per pole in Webers:");

Di=Da+(2*ag);....................//Inner diameter of the pole shoe circle in Mili Meter
Pl=(1/P)*%pi*Di*(Fc/100)/1000;..........//Effective pole arc length in Meters
y1=round(Pl*1000)/1000;..............//Rounding of decimal places
disp(y1,"(b).Efective pole arc length in Meters:");

Psa=y1*La/1000;....................//Pole surface area in Mili Meter^2
disp(Psa,"(c).Pole surface area in Mili Meter^2:");
B=Phi/Psa;.............................//Flux density in Tesla
y2=round(B*100)/100;
disp(y2,"Flux density in Tesla:");

