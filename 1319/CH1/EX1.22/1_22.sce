//To find the resistor for a given Q factor

clc;
clear;

f0=600*(10^3);
bw=50*(10^3); // Bandwidth

L=1.3*(10^-3); // Inductance

Q=30;

Xl=2*%pi*f0*L; // Inductive Reactance

Xco=Xl;// At resonance Xl= Xco

Zto=Q*Xco;

Qd=f0/bw; // Required Q for the circuit

Zdto= Qd*Xco; // The equivalent input resistance required

Rd=poly(0,'Rd');

x=(Zdto*(Zto+Rd))-(Zto*Rd); // Characteristic equation to the shunt resistance

Rd=roots(x); // Shunt resistance

printf('The resistance that is to be connected across the coil = %g k ohms\n',Rd/1000)


