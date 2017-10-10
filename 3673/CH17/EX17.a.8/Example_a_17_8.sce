//Example_a_17_8 page no:868
clc;
L=60*10^-3;
C=0.16*10^-6;
f=2*10^3;
fc=1/(%pi*sqrt(L*C));
Zot=sqrt(L/C)*sqrt(1-(f/fc));
phase_shift=2*asind(f/fc);
disp(fc/1000,"the cut off frequency is (in kHz)");
disp(Zot,"nominal impedance is (in ohm)");
disp(phase_shift,"the attenuation constant is (in nepers)");
//impedence varie slightly henc fc value is rounded off in text book
