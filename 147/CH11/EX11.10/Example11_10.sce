close();
clear;
clc;
Vcc = 5;//V
Vcesat = 0.2;
Rc = 640;
Icsat = (Vcc-Vcesat)/Rc;
P = 2*Vcc*Icsat;
mprintf('Power dissipated by RTL P = %0.0f mW',P*1000);