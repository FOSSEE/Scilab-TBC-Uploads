//Ratio of speeds of a generator and motor

clc;
clear;

V=250;
Il=80;
Ra=0.12;
Rf=100;// Field Resistance

Ish=V/Rf;// Field Current

Ia1=Il+Ish;// Machine Current genrated
Ia2=Il-Ish;// Motor Current taken by the motor

E=V+(Ia1*Ra);// Generator Induced EMF

Eb=V-(Ia2*Ra);// Motor Operating EMF

//Speeds are directly proportional to the EMFs

Nr=E/Eb; // Ratio of speeds

printf('The ratio of Generator speed to motor speed = %g \n',Nr)


