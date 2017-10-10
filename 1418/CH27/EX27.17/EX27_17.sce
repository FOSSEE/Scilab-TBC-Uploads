//EXAMPLE 27.17
//SHUNT GENERATORS

clc;
funcprot(0);

//Variable Initialisation
I=250;.......//Total current in Amperes
r1=50;.......//Rating of first generator in Kilo Watts
r2=100;......//Rating of second generator in Kilo Watts
V=500;....//Voltage of generators in Volts
vr1=6;.....//Voltage regulation of first generator in Percentage
vr2=4;.....//Voltage regulation of first generator in Percentage

FLvd1=V*(vr1/100);......//Full load voltage drop of first generator in Volts
FLI1=r1*1000/V;........//Full load current in Amperes
da1=FLvd1/FLI1;..........//Drop per ampere in volt per ampere

FLvd2=V*(vr2/100);......//Full load voltage drop of second generator in Volts
FLI2=r2*1000/V;........//Full load current in Amperes
da2=FLvd2/FLI2;..........//Drop per ampere in volt per ampere

//Solving for current output of both the generators in Amperes
A=[3 -1;1 1];
B=[0;250];
a=A\B;
disp(a(1),"Output current of first generator in Amperes:");
disp(a(2),"Output current of second generator in Amperes:");

Vt=V-(da1*a(1));......//Terminal voltage in Volts
disp(Vt,"Terminal voltage in Volts:");
