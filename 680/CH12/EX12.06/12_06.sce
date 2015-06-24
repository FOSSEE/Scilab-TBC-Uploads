//Problem 12.06:

//initializing the variables:
xb = 0.2; // mol% 
p = 280; // in psia
a = 0.4;

//calculation:
BPT = 140; // in deg F
Kp = 1.15
Kb = 0.41
Y = xb*Kb + Kp*(1 - xb)
DPT = 154; // deg F
Kp = 1.30
Kb = 0.50
Xa = xb/Kb + (1-xb)/Kp
T = 145; // in deg F
L = 1 - a
Kp = 1.20
Kb = 0.45
Xz = xb/(L + Kb*a) + (1 - xb)/(L + Kp*a)

printf("\n\nResult\n\n")
printf("\n bubble point temperature is %.0f deg F, dew point temperature is %.0f deg F and temperature when 40 mole per of the mixture is in the vapor phase is %.0f deg F",BPT, DPT, T)