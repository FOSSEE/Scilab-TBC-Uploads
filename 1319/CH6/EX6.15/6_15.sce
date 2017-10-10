//Speed at 50A considering armature reaction of a shunt motor

clc;
clear;

N=1000; // Speed at No load
I=5; // Current at no load
V=250;
Ra=0.2; // Armature Resistance
Rf=250;// Field Resistance

Ish=V/Rf; // Field Current

Ia=I-Ish; //Armature Current at no load
Eb=V-(Ia*Ra); // Back EMF at no load
Il=50; // Curent taken when loaded

Ebl=V-(Il-Ish)*Ra;// Back EMF when loaded

Nl=Ebl*N/(0.97*Eb)

printf('The Speed at 50A considering weakening of the field due to armature reaction = %g rpm \n',ceil(Nl) )







