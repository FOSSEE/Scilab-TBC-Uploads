//clear//
//Caption: Program to calculate E and Polarization P for Teflon slab
//Example6.2
//page 146
clc;
ax = sym('ax');
e0 = sym('e0');
E0 = sym('E0');
er = 2.1; //relative permittivity of teflon
chi = er-1; //electric susceptibility 
Eout = E0*ax;
Ein = float(Eout/er);
Din = float(e0*Eout);
Pin = float(Din - e0*Ein);
disp(Ein,'Ein in V/m = ')
disp(Pin,'Polarization in coulombs per square metre Pin =')
//Result
//Ein in V/m =  0.47619047619048*ax*E0   
//Polarization in coulombs per square metre Pin = 0.52380952380952*ax*e0*E0 
