// Determine the size of the conductor for power and lighting circuit

clc;
clear;

P5=3*800; // Load wattage in 5A circuit
P15=2*1500;// Load wattage in 15 A circuit

Pt=P5+P15; // Total Load

// Assume a average of 0.8 pf, common for distribution systems

pf=0.8;

V=230; // Supply voltage

I=Pt/(V*pf); // Current at 230 supply

Isc=1.5*I; // Short Circuit Current

printf('The Current is %g A and the short circuit current is %g A\n\n',I,Isc)
printf('From the result sheet provided along with this code,\n for aluminium wire the size of the conductor comes out to be 25 mm^2.\nIn fact for 43 A it is 16 mm^2 but we should always go for one higher size of the conductor\n and hence we select conductor of size 25 mm^2 or 7/2.24 mm.')
printf('\n \n Refer the table in the result sheet \n')

