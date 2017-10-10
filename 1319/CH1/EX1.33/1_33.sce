//Determine circuit paramters of an iron coil

clc;
clear;

f=50; // Frequency
Vdc=40;//DC Voltage source
Idc=5; // Current drawn from DC Voltage source
Vac=200; // AC Voltage Source
Iac=5; // Current drawn form AC Voltage source
P=500; // Power Consumed by ac supply

R=Vdc/Idc; // Resistance of the coil
Z=Vac/Iac; // Impedance of the coil

Pc=(Iac^2)*R; //Power loss in ohmic resistance

Pil=P-Pc; // Iron loss

Reff=P/(Iac^2); // Effective resistance of the coil

Xl=sqrt((Z^2)-(Reff^2)); // Reactance of the coil

L=Xl/(2*%pi*f); // Inductance of the coil

pf=P/(Vac*Iac);

printf('i) The impedance = %g ohms\n',Z)
printf('ii) The iron loss = %g W\n',Pil)
printf('iii) The inductance of the coil = %g H\n',L) 
printf('iv) p.f of the coil = %g\n',pf)
