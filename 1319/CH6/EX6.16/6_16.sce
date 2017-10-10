// Speed of shunt motor taking 50kW input

clc;
clear;

Pog=50*(10^3);// Power ouput of the generator
Ng=400; // Speed of the generator
Vg=250;
Ra=0.02;
Rf=50;

Pim=50*(10^3); // Power Input of motor
Vm=250;

Vb=2;// Contact drop

// Generator

Ish=Vg/Rf; // Field Current
Ilg=Pog/Vg; // Load Current
Iag=Ish+Ilg; // Armature Current

Eg=Vg+(Iag*Ra)+Vb;

// Motor

Ilm=Pim/Vm; // Input Current
Ish=Vm/Rf; // Field Current
Iam=Ilm-Ish; // Armature Current

Eb=Vm-(Iam*Ra)-Vb; // Back EMF

Nm=Eb*Ng/Eg;

printf('The speed of shunt generator as a motor = %g rpm',ceil(Nm))


