//Determine Circuit parameters for a circuit with a current source

clc;
clear;

I=2.5*(10^-3); // Current Source
R=100; // Resistance of the coil
L=1*(10^-3); // Inductance of the coil
fr=600*(10^3); // Resonance frequency
R2=60*(10^3); // Resistance in parallel with the coil
wr=2*%pi*fr;// Angular Resonance frequency

Q=wr*L/R; // For the coil

C=1/((wr^2)*L); // Capcitance in the circuit
Xc0=1/(wr*C);

Recc=Q*Xc0; // Equivalent resistance of coil and capacitor

Req=R*Recc/(R+Recc); //Equivalent resistance of the circuit

Qcir=wr*Req*C; // For the circuit

bw=fr/Qcir; // Bandwidth of the circuit

v=I*Req;

MaxE=C*(v^2); // Maximum energy stored by the capacitor

Pdr=(I^2)*Req; // Power dissipated in the resistor


// Textbook calculation for Equivalent resistance of C and Coil is wrong

printf('a) Q of the coil = %g\n',Q)
printf('b) Capacitance C = %g pF\n',C*(10^12))
printf('c) Q of the circuit = %g\n',Qcir)
printf('d) Bandwidth of the circuit = %g kHz\n',bw/1000)
printf('e) Maximum Energy stored in the capacitor = %g pJ\n',MaxE*(10^12))
printf('f) Power Dissipated in the resistor = %g mW\n',Pdr*1000)

