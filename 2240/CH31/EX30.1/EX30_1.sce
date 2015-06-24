// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_1
clear; clc;
// Determine Id for each value of Vgs (a) 0V; (b) -0.5V; (c) -1V (d) -2V (e) -3V

// Given Data

Vgs1 = 0;           // Voltage Gate-Source 1=0 Volts
Vgs2 = -0.5;        // Voltage Gate-Source 2=-0.5 Volts
Vgs3 = -1;          // Voltage Gate-Source 3=-1 Volts
Vgs4 = -2;          // Voltage Gate-Source 4=-2 Volts
Vgs5 = -3;          // Voltage Gate-Source 5=-3 Volts
Vgsoff = -4;        // Voltage Gate-Source(off)=-4 Volts
Idss = 10*10^-3     // Idss = 10m Amps

a = (1-(Vgs1/Vgsoff))
b = (1-(Vgs2/Vgsoff))
c = (1-(Vgs3/Vgsoff))
d = (1-(Vgs4/Vgsoff))
e = (1-(Vgs5/Vgsoff))

// Vgs = 0 Volts

Id1 = Idss*a*a
disp (Id1,'The Value of Id for Vgs = 0 Volts in Amps')
disp ('i.e 10 mAmps')

// Vgs = -0.5 Volts

Id2 = Idss*b*b
disp (Id2,'The Value of Id for Vgs = -0.5 Volts in Amps')
disp ('i.e 7.65 mAmps')

// Vgs = -1 Volts

Id3 = Idss*c*c
disp (Id3,'The Value of Id for Vgs = -1 Volts in Amps')
disp ('i.e 5.62 mAmps')

// Vgs = -2 Volts

Id4 = Idss*d*d
disp (Id4,'The Value of Id for Vgs = -2 Volts in  Amps')
disp ('i.e 2.5 mAmps')

// Vgs = -3 Volts

Id5 = Idss*e*e
disp (Id5,'The Value of Id for Vgs = -3 Volts in Amps')
disp ('i.e 0.625 mAmps')
