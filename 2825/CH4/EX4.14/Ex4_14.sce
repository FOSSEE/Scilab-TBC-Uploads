//Ex4_14 Pg-246
clc

RL=1*10^3 //load resistance in ohm
Rs=270 //series resistor in ohm
Vs=18 //supply voltage in V
vz=10 //xener voltage

disp("Applying Thevenin''s theorem, Thevenin voltage across the zener diode")
Vth=(RL/(RL+Rs))*Vs //Thevenin voltage
printf("\n      Vth = %.1f V \n ",Vth)

disp("Thus Vth is greater than Vz(zener voltage),i.e 14.2 >10. So Zener diode is operating in the breakdown voltage.")
