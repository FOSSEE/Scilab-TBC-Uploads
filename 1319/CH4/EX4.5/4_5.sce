//To determine the range and current and deflection at various conditions

clc;
clear;

I=25;
theta=90;

// Various conditions
ta=360; // Angle in case a
tb=180; // Angle in case b
Ic=20; // Current in case c

// theta directly proportional to the square of the current

Ia=sqrt(ta*(I^2)/theta);

Ib=sqrt(tb*(I^2)/theta);

tc=((Ic/I)^2)*theta;

printf('a) Full Scsle deflection (360) current = %g A \n',Ia)
printf('b) Half Scsle deflection (180) current = %g A \n',Ib)
printf('c) Deflection for a current of 20 A = %g degrees \n',tc)
