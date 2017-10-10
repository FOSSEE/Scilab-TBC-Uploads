// Exa 2.11

clc;
clear;

// Given data

Io=10*10^-6; // Output current(A)
Vcc= 10;  // Volts
B=125; // current gain
Vbe=0.7; // Voltage between base and emitter(V)
Vt=25*10^-3; // volt equivalent of temperature at room temperature(V)

//Solution

disp(" Let Iref = 1 mA then using equation 2.79, we get- ");

Iref=1*10^-3; // we choose

R1=(Vcc-Vbe)/Iref;
printf('\n  The value of R1 = %.1f kΩ. \n',R1/1000);

disp(" Using equation 2.74, we get-");
Re=(Vt/((1+1/B)*Io))*log(Iref/Io);
printf('\n  The value of Re = %.1f kΩ. \n',Re/1000);

disp(" Thus, it is clearly seen that Wildar circuit allows the generation of small currents using relatively small resistors.");

