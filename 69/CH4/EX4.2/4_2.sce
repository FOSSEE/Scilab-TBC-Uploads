clear; clc; close;

Vcc = 12;
Rc = 2.2*10^(3);

Icsat = Vcc/Rc;
disp(Icsat,'saturation current(Amperes) for network is :');
