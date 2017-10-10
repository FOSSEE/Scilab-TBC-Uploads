// Exa 2.2

clc;
clear;

// Given data

// An amplifier as given in Fig. 2.5(b)
R1 = 10*10^3;   //Input resistance of amplifier (Ω)
Rf = 100*10^3;  // Feedback resistance of amplifier (Ω)
vi = 1;         // Input voltage applied (Volts)
RL = 25*10^3;    // Load resistance (Ω)

// Solution

i1 = vi/R1; //Input current(A)
printf(' The value of input current = i1 = %.1f mA. \n ',i1*1000);
vo = -1*(Rf/R1)*vi; // output voltage(V)
printf(' The value of output voltage = vo = %d V. \n ',vo);
iL = abs(vo)/RL;  // Load current(A)
printf(' The value of load current = iL = %.1f mA.',iL*1000);
disp(" The direction of iL is as shown in Fig. 2.5(b).");
// iTot = i1 + iL;
iTot = i1+iL;  // Total current(A)
printf('  The value of total current = io = %.1f mA.',iTot*1000);
disp(" In an inverting amplifier, for a +ive input, output will be -ive, therefore the direction of io is as shown in Fig. 2.5(b).");
