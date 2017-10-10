//Example_a_17_4 page no:866
clc;
f=1.5*10^3;
L=40*10^-3;
C=0.12*10^-6;
fc=1/(%pi*sqrt(L*C));
ZoT=sqrt(L/C)*sqrt(1-(f/fc)^2);
phase_shift=2*asind(f/fc);
disp(fc/1000,"the cut off frequency is (in kHz)");
disp(ZoT,"the iterative impedence is (in ohm)");
disp(phase_shift,"the phase shift is (in degree)");
