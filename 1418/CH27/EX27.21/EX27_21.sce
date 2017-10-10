//EXAMPLE 27.21
//DC GENERATORS

clc;
funcprot(0);

//Variable Initialisation
I=1500;.........//Total load in Amperes
Ra1=0.5;.........//Armature resistance of first generator in Ohms
emf1=400;.......//EMF of first generator in Volts
Ra2=0.04;.......//Armature resistance of second generator in Ohms
emf2=440;.....//EMF of second generator in Ohms
Rf1=100;........//Shunt field resistance of first generator in Ohms
Rf2=80;..........//Shunt field resistance of second generator in Ohms

V=((Ra1*(emf2-(I*Ra2)))+(Ra2*emf1))/((Ra1*(1+(Ra2/Rf2)))+(Ra2*(1+(Ra1/Rf1))));......//Terminal voltage in Volts
r=round(V*10)/10;......//Rounding of decimal places
disp(r,"Terminal voltage in Volts:");

I1=(emf1-((1+(Ra1/Rf1))*r))/Ra1;.......//Output current of first generator in Amperes
r1=round(I1*10)/10;....//Rounding of decimal places
I2=I-r1;............//Output current of second generator in Amperes

disp(r1,"Output current of first generator in Amperes:");
disp(I2,"Output current of second generator in Amperes:");

Po1=r*r1/1000;........//Output of first generator in Kilo Watts
r2=round(Po1*100)/100;.......//Rounding of decimal places
Po2=r*I2/1000;..........//Output of first generator in Kilo Watts
r3=round(Po2*10)/10;......//Rounding of decimal places

disp(r2,"Output of first generator in Kilo Watts:");
disp(r3,"Output of first generator in Kilo Watts:");
