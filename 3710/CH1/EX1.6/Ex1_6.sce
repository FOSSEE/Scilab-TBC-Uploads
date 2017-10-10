//Example 1.6, Page Number 32
//Phi Determination
 
clc;
e=1.6*(10**-19) //Charge Of an Electron in Coulombs
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second
vo=1.1*(10**15) //Threshold Frequency in Hertz

// h*vo=phi*e ,phi is the required Work Function,vo is the threshold frequency
// Lets assume that the ejected electron has zero kinetic energy

phi=h*vo/e
mprintf("The Required Work function is %.1f eV",phi);
