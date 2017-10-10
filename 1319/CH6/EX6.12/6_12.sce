//Speed of a belt driven shunt generator

clc;
clear;

Pg=100*(10^3);// Power output of the generator
Pm=10*(10^3); // Power input of the motor
V=220; 
Ng=300; // Running speed of the generator
Ra=0.025; // Armature resistance
Rf=60; // Field Resistance
Vb=2;// Voltage drop due to brushes

Im=Pm/V; // Current taken by the motor
Ig=Pg/V; // Current delivered by the generator

Eg=V+(Ig*Ra)+Vb; // Induced EMF of generator

Eb=V-(Im*Ra)-Vb; // Back EMF of the motor

Nm=Eb*Ng/Eg;

printf('The Speed under motoring condition = %g rpm \n',Nm)



