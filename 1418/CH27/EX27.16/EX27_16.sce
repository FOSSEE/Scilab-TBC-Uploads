//EXAMPLE 27.16
//SHUNT GENERATORS

clc;
funcprot(0);

//Variable Initialisation
Ra=0.01;......//Armature resistance in Ohms
Rf=20;..........//Shunt field resistance in Ohms
I=4000;..........//Total load in Amperes

E1=210;......//EMF of first generator in Volts
E2=220;......//EMF of second generator in Volts

//Solving for current output of both the generators in Amperes
A=[1 -1;1 1];
B=[1000;4000];
a=A\B;
disp(a(1),"Output current of first generator in Amperes:");
disp(a(2),"Output current of second generator in Amperes:");

V=(E1-(a(1)*Ra))/(1+(Ra/Rf));.....//Bus bar voltage in Volts
r=round(V*10)/10;....//Rounding of decimal places
disp(r,"Bus bar voltage in Volts:");

Po1=r*a(1)/1000;.....//Output of first generator in Kilo Watts
Po2=r*a(2)/1000;.....//Output of second generator in Kilo Watts
disp(Po1,"Output of first generator in Kilo Watts:");
disp(Po2,"Output of second generator in Kilo Watts:");
