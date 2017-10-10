clc;
p=6; // number of poles
s=54; // number of slots
n=1000; // speed of alternator in rpm
t=80; // number of turn in coils A and B
f=0.015; // flux per pole
F=50; // given frequency of alternator
// Coil A is over pitched by one slot and coil B is short pitched by one slot
pp=s/p; // pole pitch
sap=(p*180)/s; // slot angular pitch
e1=(%pi*F*f*t)/sqrt(2); // EMF generated in one coil side of coil A or B
// same EMF is generated in col side 11 but with a phase of (180+sap) degrees. Resultant of emf in coil side 1 and 11 is given by
Ea=2*e1*cosd(sap/2); // net emf in coil side 1
Eb=Ea; // net emf in coil side 2
//Ea and Eb are in phase with each other from phasor diagram (fig. 3.26)
disp('case a'); 
en=Ea+Eb; 
printf('Resultant e.m.f when coils A and B are connected in series aiding is %f V\n',en);
disp('case b');
en=Ea-Eb; 
printf('Resultant e.m.f when coils A and B are connected in series opposing is %f V\n',en);

