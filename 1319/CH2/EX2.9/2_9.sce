// Superposition Principle to determine current in branch

clc;
clear;

//Order of resistances from left to right in the circuit
r1=2;
r2=12;
r3=1;
r4=2;
r5=3;

V1=2;
V2=4;

// We now short circuit by removing one source and consider the rest of the cicuit
// Hence we will have two cases

//Case 1 4V supply removed and shorted

//Resistances between respective nodes.
rab1=(r4*r5)/(r4+r5);
rac1=rab1+r3;
rcd1=(rac1*r2)/(rac1+r2);

Reff1=rcd1+r1;// Effective resistance in case 1

I1=V1/Reff1; // Current from the 2V source

Iac1=I1*(r2/(r2+rac1));
Iab1=Iac1*(r5/(r5+r4)); //Current in AB from 2V source

//Case 2 2V supply removed and shorted

//Resistances between respective nodes.
rcd2=(r1*r2)/(r1+r2);
rac2=rcd2+r3;
rab2=(rac2*r4)/(rac2+r4);

Reff2=rab2+r5;//Effective resistance in case 2

I2=V2/Reff2; // Current from the 4V source

Iab2=I2*(rac2/(rac2+r4)); //Current in AB from 4V source

Iab=Iab1+Iab2;// Combined Current in AB from both the sources 

disp('amperes',Iab,'The Current through AB (2 ohm resistor) =')
