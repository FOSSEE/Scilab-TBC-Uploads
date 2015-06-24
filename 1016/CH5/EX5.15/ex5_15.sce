clc;clear;
//Example 5.15

//given data
W=6525;//wavelength in angstrom

//calcualation
Vo=12400*((1/4000)-(1/W));
disp(Vo,'Stopping potential in (a) in volts');
Vo=12400*((1/2000)-(1/W));
disp(Vo,'Stopping potential in (b) in volts');
Vo=12400*((1/2000)-(2/W));
disp(Vo,'Stopping potential in (c) in volts')