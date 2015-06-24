// find power band width 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-6, page 673

clear; clc; close;

// Given data
Vp=8;// peak voltage in volts
Sr1=0.5*10^6;// slew rate in volts/second
Sr2=5*10^6;// slew rate in volts/second
Sr3=50*10^6;// slew rate in volts/second

// Calculations
fmax1=Sr1/(2*%pi*Vp);// power band width in hertz
fmax2=Sr2/(2*%pi*Vp);// power band width in hertz
fmax3=Sr3/(2*%pi*Vp);// power band width in hertz
disp("Hertz ",fmax1,"power band width 1=")
disp("Hertz ",fmax2,"power band width 2=")
disp("Hertz ",fmax3,"power band width 3=")

// Result
// Power bandwidth when slew rate is 0.5 Volts/micro seconds is 10 kHertz
// Power bandwidth when slew rate is 5 Volts/micro seconds is 100 kHertz
// Power bandwidth when slew rate is 50 Volts/micro seconds is 1 MHertz