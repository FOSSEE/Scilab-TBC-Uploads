// Size of conductor to be used for wiring a 10 kW 400V 3 Phase induction motor

clc;
clear;

P=10*(10^3); // Power Rating
V=400; // Voltage Rating
f=50;// Frequency of operation

// Assumptions Made
eff=85/100; // Efficiency
pf=0.8// Power Factor

I=P/(sqrt(3)*V*eff*pf); // Current flowing in the conductor

Is=2*I; //At the time of starting the induction motor may take 2 times the rated current

printf('The Rated Current = %g A\n\n',I)
printf(' At the time of starting the induction motor may take\n 2 times the rated current and hence starting current = %g A \n\n',Is)

printf(' From the table corresponding to 42.4 A that is 43 A\n the wire used is 7 /1. 7 mm or 16 mm^2.\n')
