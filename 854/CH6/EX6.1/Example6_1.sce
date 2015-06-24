//clear//
//Caption: Program to calculate D,E and Polarization P for Teflon slab
//Example6.1
//page 142
clc;
ax = sym('ax');
e0 = sym('e0');
E0 = sym('E0');
Ein = sym('Ein');
er = 2.1; //relative permittivity of teflon
chi = er-1; //electric susceptibility 
Eout = E0*ax;
Dout = float(e0*Eout);
Din = float(er*e0*Ein);
Pin = float(chi*e0*Ein);
disp(Dout,'Dout in c/square.metre = ')
disp(Din,'Din in c/square.metre = ')
disp(Pin,'Polarization in coulombs per square metre Pin =')
//Result
//Dout in c/square.metre =   ax*e0*E0   
//Din in c/square.metre =    2.1*e0*Ein   
//Polarization in coulombs per square metre Pin =  1.1*e0*Ein   
