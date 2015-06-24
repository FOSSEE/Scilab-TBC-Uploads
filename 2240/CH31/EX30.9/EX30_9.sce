// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_9
clear; clc;
//Determine Id for each value of Vgs (a) 2V; (b) -2V; (c) 0V

// Given Data
Vgs1 = 2;           // Voltage Gate-Source 1=2 Volts
Vgs2 = -2;          // Voltage Gate-Source 2=-2 Volts
Vgs3 = 0;           // Voltage Gate-Source 3=0 Volts
Vgsoff = -4;        // Voltage Gate-Source(off)=-4 Volts
Idss = 10*10^-3;    // Idss = 10m Amps

a = (1-(Vgs1/Vgsoff));
b = (1-(Vgs2/Vgsoff));
c = (1-(Vgs3/Vgsoff));

// Vgs = 2 Volts

Id1 = Idss*a*a;
disp (Id1,'The Value of Id for Vgs = 2 Volts in Amps')
disp ('i.e 22.5 mAmps')

// Vgs = -2 Volts

Id2 = Idss*b*b;
disp (Id2,'The Value of Id for Vgs = -2 Volts in Amps')
disp ('i.e 2.5 mAmps')

// Vgs = 0 Volts

Id3 = Idss*c*c;
disp (Id3,'The Value of Id for Vgs = 0 Volts in Amps')
disp ('i.e 10 mAmps')
