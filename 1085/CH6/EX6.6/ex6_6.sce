//Exam:6.6
clc;
clear;
close;
h=6.625*(10^(-34));//Planck's constant(in m2*kg/s)
c=3*10^8;//speed of light (in m/s)
P_o=10*10^3;//Power of radio receiver (in Watt)
v=440*10^3;//Operating frequency
E=h*v;//Energy of each electron
N=P_o/E;//Number of photons emitted/sec
disp(N,'Number of photons emitted/sec by radio receiver=')