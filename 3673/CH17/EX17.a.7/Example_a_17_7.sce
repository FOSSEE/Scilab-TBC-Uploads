//Example_a_17_7 page no:867
clc;
f=12*10^3;
L=10*10^-3;
C=0.32*10^-6;
fc=1/(%pi*sqrt(L*C));
k=sqrt(L/C);
atten_cont=2*acosh(f/fc);
disp(fc/1000,"the cut off frequency is (in kHz)");
disp(k,"nominal impedance is (in ohm)");
disp(atten_cont,"the attenuation constant is (in nepers)");
