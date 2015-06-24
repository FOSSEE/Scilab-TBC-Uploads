// Example 4.10: channel width to channel length ratio and drain resisitance
clc, clear
Id=100; // drain current in micro-ampere
kn=20; // in micro-ampere per volt^2
Vt=-1; // in volts
Vgs=0; // gate source voltage in volts
Vdd=5; // dc voltage in volts
Vd=1; // drain voltage in volts
wl=(2*Id/(kn*(Vgs-Vt)^2));
Rd=(Vdd-Vd)/(Id*10^-3);
disp(wl,"dchannel width to channel ratio ()")
disp(Rd,"drain resistance (in kilo ohm)")
disp("Rd can vary in the range 0 to 40 kilo-ohm")
